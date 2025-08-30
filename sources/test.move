#[test_only]
module workshop_project::todo_list_test{

    use workshop_project::todo_list::{TodoList, Self};
    #[test]
    fun tes_todo_list(){
        let ctx = tx_context::dummy();
         let mut list = todo_list::new(ctx);

         todo_list::add(&list, b"wash my clothes!".to_string());

         assert!(todo_list::get_items($list,0) ==b"wash my clothes!".to_string(),Enotfound);
         todo_list::delete(list)
    }
   
}



// key, store, drop, copy

//to drop: delete, freeze share, transfer