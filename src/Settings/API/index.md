
# API 

Create headless applications with Solodev API.

---

## RESTful features of the Solodev API


**What is REST?** 

When discussing the Solodev API terms like “REST” and “RESTful” are often used. “REST” stands for Representational State Transfer. “REST” is an architectural style designed as an alternative to RPC or SOAP-based web services. 

 

Although there is no official REST standard, common approaches and best practices used across the engineering community define how RESTful APIs should work. 

 

Solodev follows most of the practices and common definitions of the style. For example, Solodev API uses “resources” that are typically nouns such as Datatable or Calendar. You can act on resources using the standard HTTP methods and routes that reflect standard CRUD operations.

**HTTP methods**

The Solodev API supports these HTTP methods for interacting with resources: 

 

- Use a **GET** request to retrieve data. GET requests are safe and indempotent because they do not update or change user data. 

- Use a **POST** request to create new endpoints and update existing ones. 

- Use a **DELETE** request to remove a resource.


**Resources**

Resources are typically nouns (for e.g. Calendar and Datatable) that you can act on using GET, POST and DELETE HTTP methods.

 

Solodev documentation refers to endpoints. Endpoints are URIs for individual resources. For example, you can find a collection of calendars by executing a request against the **/calendar/** endpoint.

## API overview

**Before you start**

The Solodev API is designed to help users implement custom solutions or integrate with RESTful APIs. 

The REST architectural style is an integral part of API 3.0. To learn more about REST, refer to RESTful features of the Solodev API.

**What is Solodev API?**

Solodev empowers you to extend your data and content using a built-in Application Programming Interface (API). Solodev provides the user with two API sets:

 

- ***Solodev System API:*** allows you to store and deliver structured content using a headless version of Solodev CMS. Use the System API to create and globally manage CMS objects (folders, files, calendars) from the backend using the appropriate routes. For example, the search route can query all modules for the calendar type across all websites. 

- ***Solodev Module API:*** allows users to individually target different module types custom to their environment for management and expose them to external publishing channels such as websites and mobile applications. 



**User access:** The permissions assigned to the user who generated the API key determines endpoint access. [Learn more about managing permissions](https://cms.solodev.net/organization/permissions-best-practices/). 

 

**JSON:** Solodev API only supports JSON. All POST and DELETE requests require a valid JSON object for the body.

 
**Search Parameters**

Each endpoint uses HTTP methods to perform CRUD (Create, Retrieve, Update, and Destroy) operations against Solodev resources. The CRUD operations are referred to as routes that consist of a variety of parameters. For example, the search route consists of six parameters listed below.  

![Search Parameters](search_params.jpg)

**Code Examples**

After passing the values into the parameters, users can click the Execute button to generate curl requests, Request URLs, or JSON responses. Example responses are provided below: 

***Curl:***

`curl -X GET "https://localhost.solodev.net/api.php/datatable?qry=%7B%22date_modified%22%3A%20%7B%24regex%22%3A%221579636356%22%7D%7D&start=1&length=2&orderStr=%22date_modified%22&orderDir=ASC" -H "accept: */*"`

***Request URL:***

`https://localhost.solodev.net/api.php/datatable?qry=%7B%22date_modified%22%3A%20%7B%24regex%22%3A%221579636356%22%7D%7D&start=1&length=2&orderStr=%22date_modified%22&orderDir=ASC`
 

***Response Body:***

```json
{

  "datatable": [

    {

      "datatable_id": "4",

      "parent_category_id": "74",

      "name": "Careers",

      "form_template": "119",

      "return_template": "120",

      "web_category": null,

      "html_template": null,

      "datatable_category_group_id": null,

      "date_added": "1579636261",

      "date_modified": "1579636356",

      "enforce_permissions": null,

      "enable_user_groups": null,

      "title_field": null,

      "datatable_type": "Form",

      "small_icon": null,

      "large_icon": null,

      "display_template": null,

      "detail_display_template": null,

      "email_template": null,

      "asset_category_map_anchor": null,

      "items_per_page": null,

      "items_per_row": null,

      "number_of_pages_to_display": null,

      "itemImageDimensionSM": null,

      "itemImageDimensionMED": null,

      "itemImageDimensionLRG": null,

      "protect": null,

      "captcha": null,

      "geocode": null,

      "display_columns": null,

      "asset_fields": null,

      "icon_type": "fab fa-wpforms",

      "tickler_url": null,

      "assignee": null,

      "notify_type": null,

      "description": null,

      "samaccountname": "solodev",

      "tag_template": null,

      "logo": null,

      "post_process": null,

      "force_image_width": null,

      "thumbnail_width": null,

      "has_captcha": null,

      "flat_entries": null,

      "table_relationships": null,

      "table_schema": "datatable_entry_id I(11) NOTNULL PRIMARY,\nprospect_fname C(255) NULL,\nprospect_lname C(255) NULL,\nemail C(255) NULL,\naddress C(255) NULL,\nphone C(255) NULL,\nupload_resume C(255) NULL,\nposition C(255) NULL",

      "module_object_id": "28",

      "module_dm_id": 40,

      "fa": "fas fa-database",

      "key": "datatable_id",

      "process": "showDatatable",

      "route": "/modules/datatable/{{id}}",

      "icon": "fas fa-database"

    },

    {

      "datatable_id": "5",

      "parent_category_id": "74",

      "name": "Footer",

      "form_template": "128",

      "return_template": "129",

      "web_category": null,

      "html_template": null,

      "datatable_category_group_id": null,

      "date_added": "1579636262",

      "date_modified": "1579636357",

      "enforce_permissions": null,

      "enable_user_groups": null,

      "title_field": null,

      "datatable_type": "Form",

      "small_icon": null,

      "large_icon": null,

      "display_template": null,

      "detail_display_template": null,

      "email_template": null,

      "asset_category_map_anchor": null,

      "items_per_page": null,

      "items_per_row": null,

      "number_of_pages_to_display": null,

      "itemImageDimensionSM": null,

      "itemImageDimensionMED": null,

      "itemImageDimensionLRG": null,

      "protect": null,

      "captcha": null,

      "geocode": null,

      "display_columns": null,

      "asset_fields": null,

      "icon_type": "fab fa-wpforms",

      "tickler_url": null,

      "assignee": null,

      "notify_type": null,

      "description": null,

      "samaccountname": "solodev",

      "tag_template": null,

      "logo": null,

      "post_process": null,

      "force_image_width": null,

      "thumbnail_width": null,

      "has_captcha": null,

      "flat_entries": null,

      "table_relationships": null,

      "table_schema": "datatable_entry_id I(11) NOTNULL PRIMARY,\nname C(255) NULL,\nemail C(255) NULL",

      "module_object_id": "28",

      "module_dm_id": 40,

      "fa": "fas fa-database",

      "key": "datatable_id",

      "process": "showDatatable",

      "route": "/modules/datatable/{{id}}",

      "icon": "fas fa-database"

    }

  ]
}
```



## Creating and configuring API Tokens 

Extend your data and content using a built-in Application Programming Interface (API). Solodev provides you with two API sets: 

- Solodev System API – allows users to store and deliver structured content using a headless version of Solodev CMS.

- Solodev Module API – allows users to expose the data stored in modules to external publishing channels such as websites and mobile applications. 

- We will show you how to generate an API key pair and use that key pair to authorize requests to both API sets.

 

**Step 1: Create a User** 

- Click Users located under the Organization section of the Solodev Dashboard.

- Click Invite User(s) to bring up the Invite User(s) window.

- Enter the Email Address and Group Name in the respective fields (press the tab button after entering each email address and group name).

- Enter the message and click Submit.

**Note:** Solodev recommends creating groups and assigning permissions to those groups before creating or inviting users to the platform. Learn more about Solodev Groups.


**Step 2: Generate an API Key**

- Login to Solodev CMS.

- Click Manage Profile to bring up the modal window for user options.

- Click My Profile.

- Under the Security section in the dashboard, click API Tokens.

- Click the Add API Key button.

- Review the warning in the Add API Key modal window and click Submit.

- An API Token and API Token Secret are generated.

**Step 3: Authorizing request to API sets**

- Under the ADMIN section of the Solodev dashboard, click API. 

- Launch the Solodev System API or the Solodev Module API (this example will use the Solodev System API).

- Under the Authentication section click the GET /beartoken tab.

- Click the “Try it out” button to enter the values for the token and token_secret.

- To retrieve the API token, open the User’s profile and click API Tokens. Copy the value under the Token column and paste it into token textbox. 

- To retrieve the token secret, click the eye icon and copy the value under the Token Secret column and paste the value into the token secret textbox.

- Click Execute to generate a response.

- Under the Response Body section, copy the token value without the quotes.

- Click Authorize and paste the token value into the textbox. 

- Click Authorize. 

- Click Close. 



**### Step 4: Using the API**

- To use the API open any one of the end points below the Authentication section. This example will run the /asset_file Search under the Asset_File Endpoints section. 

- Click the "Try it out" button.

- Click Execute to obtain the Request URL.


## System API Overview

In the previous section, you learned how to generate an API key pair and use that key pair to authorized requests to both APIs. This section provides an overview of the Solodev System API that allows you to store and deliver structured content using a headless version of Solodev CMS – along with a summary of its frequently used endpoints. 

 

**Asset Category:** The Asset Category endpoint corresponds to folders on the front end of the Solodev CMS system. Use this endpoint to create, search, and modify folders from the back end. For example, the copy route in the Asset Category endpoint serves the same purpose as copying a folder on the front end of the CMS. 


**Asset File:** The Asset File endpoint corresponds to files on the front end of the Solodev CMS system. Use this endpoint to create, search and manage files from the back end. For example, the Publish route in the Asset File endpoint performs the same function as clicking the publish button on a file in the front end of the CMS. 

 
**Calendar:** The Calendar endpoint corresponds to the calendar object. Create, search and manage calendars from the back end with this endpoint. For example, use the search route to query all calendars in the CMS system. 


**Calendar Entry:** The Calendar Entry endpoint corresponds to the entries located inside the Calendar Module. Search, create, and modify calendar entries with this endpoint. For example, use the search route to query all calendars entries.

 
**Datatable:** The Datatable endpoint corresponds to the Datatable object. This endpoint creates, searches and manages datatable objects from the back end. Query datatable objects with the search route. 

**Datatable Category:** The Datatable Category endpoint corresponds to the Collection object within the Solodev CMS. Query all categories with the search route. 


**Datatable Category Group:** The Datatable Category Group endpoint corresponds to the group of categories that can be applied to manager entries. Use the search route to search for category groups across all modules. 


**Datatable Entry:** The Datatable Entry endpoint corresponds to the Datatable Entry objects within the Soldev CMS system. Search for all entries across all modules with the search route.

**File Group:** The File Group endpoint corresponds to File Group object in the Solodev CMS. The search route enables to search for all File Groups across all websites. 

**File Group Fil:** The File Group File endpoint corresponds to the File Group Entry within a File Group. Use the search route to query entries across all File Groups.

**Link:** The Link endpoint corresponds to the Link object in Solodev CMS. Leverage the search route to search all links across websites.  

**Scheduler:** The Scheduler endpoint corresponds to the Scheduler object in Solodev CMS. Search for all Scheduler objects within the CMS system using the search route.

**Scheduler File:** The Scheduler File endpoint corresponds to the Scheduler entry object in Solodev CMS. Use the search route to search for all scheduler entries across the websites.

**User:** The User endpoint corresponds to the User object in the Solodev dashboard. Use the search route to find users within the CMS system.  

**Website:** The Website endpoint corresponds to the website object in Solodev CMS. Search all websites in the CMS with the search route. 

 
## Module API Overview

The previous section provided you with an overview of the Solodev System API and its frequently used endpoints. We will now show you how to use the Module API to target search across the blog module. Individually target different module types custom to their environment for management and expose them to external publishing channels such as websites and mobile applications with Module API. 

 
**Step 1: Authorizing requests to API Module**

- Launch the Solodev Module API. 
- Under the Authentication section click the GET /beartoken tab. 
- Click the “Try it out” button and enter the values for the token and token_secret.
- Click Execute to generate a response. 
- Under the Response Body section, copy the token value without the quotes
- Click Authorize and paste the token value into the textbox. 
- Click Authorize. 
- Click Close.  


**Step 2: Search Across Blog Module**

- Under the Blog Endpoints section, click the Search route to open it.
- Click the “Try it out” button. 
- In the text-box next to qry string, enter the search term. This example searches for blog entries with “LunarXP” in the title. 
- Click Execute. 
- The Response Body returns blog entries with LunarXP in the title.






 


 
