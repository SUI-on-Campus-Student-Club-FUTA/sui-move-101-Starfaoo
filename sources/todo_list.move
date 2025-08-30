
module workshop_project::todo_list;
   use std::string::String;

    // transfer::public_transfer()
    
/// List of todos. Can be managed by the owner and shared with others.
public struct TodoList has key, store {
    id: UID,
    items: vector<String>
}

/// Create a new todo list.
public fun new(ctx: &mut TxContext): TodoList {
    let list = TodoList {
        id: object::new(ctx),
        items: vector[]
    };

    (list)
}

public fun get_item(item: &TodoList, index) {
    list.itemss[index];
}

public fun delete(list: TodoList){
    let TodoList{
        id,
        items:_
    } = list;

    id.delete();

}

/// Add a new todo item to the list.
public fun add(list: &mut TodoList, item: String) {
    list.items.push_back(item);
}

/// Remove a todo item from the list by index.
public fun remove(list: &mut TodoList, index: u64): String {
    list.items.remove(index)
    
}

public fun length(list: &TodoList): u64 {
    list.items.length()
}

    