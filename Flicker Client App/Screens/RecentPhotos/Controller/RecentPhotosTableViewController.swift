//
//  RecentPhotosTableViewController.swift
//  Flicker Client App
//
//  Created by serkan on 24.12.2024.
//

import UIKit

class RecentPhotosTableViewController: UITableViewController , UISearchResultsUpdating{
   
    private var response: PhotosResponse?

    override func viewDidLoad() {
        super.viewDidLoad()
        
      setupSearchCcontroller()
      fetchRecentPhotos()
    
        
    }
    private func setupSearchCcontroller(){
        let searchController = UISearchController(searchResultsController: nil)
             searchController.searchResultsUpdater = self
             searchController.obscuresBackgroundDuringPresentation = false
             searchController.searchBar.placeholder = "Type Something here to search"
        navigationItem.searchController = searchController
    }
    
    private func fetchRecentPhotos(){
        guard  let url = URL(string: "https://www.flickr.com/services/rest/?method=flickr.photos.getRecent&api_key=b0b179ba436d93874556506fd9b03658&format=json&nojsoncallback=1&extras=description,date_upload,date_taken,owner_name,icon_server,original_format,url_n,url_z") else {return}
        let request = URLRequest(url:url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error{
                print("Hata")
                return
            }
            if let data = data, let response = try? JSONDecoder().decode(PhotosResponse.self, from: data){
                
                self.response = response
            }
                
        }.resume()
    }
    
    
    private func searchPhotos(with text: String){
        guard  let url = URL(string: "https://www.flickr.com/services/rest/?method=flickr.photos.search&api_key=b0b179ba436d93874556506fd9b03658&text=flower&format=json&nojsoncallback=1&extras=description,date_upload,date_taken,owner_name,icon_server,original_format,url_n,url_z") else {return}
        let request = URLRequest(url:url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error{
                print("Hata")
                return
            }
            if let data = data, let response = try? JSONDecoder().decode(PhotosResponse.self, from: data){
                
                self.response = response
            }
                
        }.resume()
    }

    
    
    
    
    
    
    
    
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return response?.photos?.photo?.count ?? .zero
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let photo = response?.photos?.photo?[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PhotoTableViewCell
        if let urlString = photo?.urlN, let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            URLSession.shared.dataTask(with: request) { data, response, error in
                if let error = error {
                    print(error)
                    return
                }
                if let data = data {
                    DispatchQueue.main.async {
                        cell.photoImageView.image = UIImage(data: data)
                    }
                 
                }
                
            }.resume()
            
        }
        
        
        cell.ownerImageView.backgroundColor = .darkGray
        cell.ownerNameLabel.text = photo?.ownerName

          //  cell.photoImageView.backgroundColor = .gray
            cell.titleLabel.text = photo?.title
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
performSegue(withIdentifier: "detailSegue", sender: nil)    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? PhotoDetailViewController{
            // TODO : Seçilen Fotoğrafı Detay Ekranına Gönder
        }
    }
    
    // MARK: - UISEARCHUPDATE
    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else {return}
        if text.count > 2{
            searchPhotos(with: text)
        }
    }
}

