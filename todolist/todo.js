  // Each item should look like this:
  // <li><input type="checkbox"/> <span>Write this tutorial</span><li>

function updateItemStatus() {
    var cdID = this.id;replace("cb_", "");
    var itemText = document.getElementById("item_" + cbId);

    if (this.checked) {
    itemText.className = "checked"; 
    // itemText.style.textDecoration = "line-through";
    // itemText.style.color = "#c00";
    // itemText.style.fontWeight = "800";
    } else {
      itemText.className = "";
    //       itemText.style.color = "000";
    // itemText.style.fontWeight = "400";
    }   
}

function renameItem() {
var newText = prompt("What should this item be renamed to?");

      if (newText ==="" || itemText === " ") {
  return false;
      }
this.innerText = newText;

}

function removeItem() {
this.style.display = "none";
}

  function addNewItem(list, itemText) {
    var date = new Date();
    var id = "" + date.getHours() + date.getMinutes() + date.getSeconds() + date.getMilliseconds();

    var listItem = document.createElement("li");
    listItem.id = "li_" + id;
    listItem.ondbclick = removeItem

    var checkBox = document.createElement("input");
    checkBox.type = "checkbox";
    checkBox.id = "cb_" + totalItems;
    checkBox.onclick = updateItemStatus;

    var span = document.createElement("span");
    span.id = "item_" + id;
    span.innerText = itemText;
    span.onclick = renameItem;

    listItem.append(checkBox);
    listItem.appendChild(span);


    list.appendChild(listItem);
}

var inItemText = document.getElementById("inItemText");
  inItemText.focus();
  inItemText.onkeyup = function(event) {

    if (event.which == 13) {

      var itemText = inItemText.value;

      if (itemText ==="" || itemText === " ") {
  return false;
      }
      
} 

var addNewItem(document.getElementById("todoList"), itemText);

    inItemText.focus();
    inItemText.select();
  };