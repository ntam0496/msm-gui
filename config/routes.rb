Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors/youngest", { :controller => "directors", :action => "max_dob" })
  get("/directors/eldest", { :controller => "directors", :action => "min_dob" })

  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:path_id", { :controller => "directors", :action => "show" })
  post("/insert_director_record", { :controller => "directors", :action => "create" })
  get("/delete_director/:path_id", { :controller => "directors", :action => "destroy" })
  get("/modify_director/:path_id", { :controller => "directors", :action => "modify" })
 

  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:path_id", { :controller => "movies", :action => "show" })
  post("/insert_movie_record", { :controller => "movies", :action => "create" })
  get("/delete_movie/:path_id", { :controller => "movies", :action => "destroy" })
  get("/modify_movie/:path_id", { :controller => "movies", :action => "modify" })
  
  
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:path_id", { :controller => "actors", :action => "show" })
  post("/insert_actor_record", { :controller => "actors", :action => "create" })
  get("/delete_actor/:path_id", { :controller => "actors", :action => "destroy" })
  get("/modify_actor/:path_id", { :controller => "actors", :action => "modify" })
end
