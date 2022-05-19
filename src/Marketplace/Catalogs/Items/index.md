
# Catalog Items

Solodev Marketplace is powered by Catalogs, which are custom-curated libraries of apps and services. Catalogs are essential to Marketplace, as they enable a user or organization to share access to their apps and services with other users – or sell their catalog items. Add items to your Catalog as one-time purchases or subscription-based plans, which are paid for directly through the Solodev Cloud. 

## Adding catalog items

- From the Solodev dashboard, click Marketplace.
- From the Marketplace dashboard, click Catalog
- Click Add Item
- Enter the title and the Fulfillment Type
- Click Submit. 

## Editing catalog items

Once a catalog item is added you can edit the information for your catalog items. 

Each catalog detail page contains eight sections and their associated fields that allows you to market and distinguish catalog items, set prices or subscription plans for your customers, and more. 

**General Information**

Contains the most essential information for catalog items. The fields of the General Information changes depending on the category of fulfillment type chosen. The fields based on each category of fulfillment type are listed below: 

***General Information fields for all fulfillment types.***

| Properties | Description |
| ----------- | ----------- |
| Title* | The title of the catalog item. Reflects the name of the application. |
| SKU* | The stock keeping unit for the application. |
| Fullfillment Type* | Allows you to choose a fullfillment tag from the Service, Infrastructure or Add-ons categories. This cannot be changed after the catalog item is created. |

***General Information fields shared by the Addon and Service fullfillment type.***

| Properties | Description |
| ----------- | ----------- |
| Publisher | The author of the service or application. |
| Publisher/App URL | The domain or website of the publisher/author of the application. |

***General Information fields for the Service fulfillment type.***

| Properties | Description |
| ----------- | ----------- |
| Buildspec | Generates custom forms forms for your catalog listing with YAML code snippets. JSON, Javascript, and HTML snippets are supported. (is this true). |
| Form preview | Generates a preview from the code snippets passed in the form specs. |

**Note:** The starred fields are fields shared between the Infrastructure, Add-ons and Service fulfillment types. 

***Editing General Information Fields (Service fulfillment)***

- From the main dashboard, click Marketplace
- Click Catalog
- Select the catalog of the Service fulfillment from the list.
- Enter the Title, SKU, Publish, and Publisher/App URL. 
- Enter the YAML syntax for the custom form. If no syntax is entered, there is a default form on the store page associated with the organization’s or developer’s marketplace profile. 
- Click Save. 

**Versions[^1]**

| Properties | Description |
| ----------- | ----------- |
| Catalog version numbers | Add/delete version numbers for catalog items and their associated applications. |

***Add/Edit/Delete catalog version numbers***

- From the main dashboard, click Marketplace
- Click Catalog
- Select the desired catalog from the list.
- Click the **+** sign beside Catalog Versions to bring up a modal window
- Enter the Version number and click Submit. 

Modify the following fields to edit catalog version numbers: 

| Properties | Description |
| ----------- | ----------- |
| Resource URL | The domain or webpage of the YAML templates for the application. |
| Description | A description of the application goes here. |
| Buildspec | Generate YAML build definitions. |

To edit a version number, follow the steps below: 

- From the main dashboard, click Marketplace.
- Click Catalog.
- Select the desired catalog from the list.
- Click the desired version number. 
- Enter the Resource URL. 
- Enter the Description.
- Enter the YAML Build.
- Set the status to Active. 
- Click Save. 

To delete a version number, follow the steps below:

- From the main dashboard, click Marketplace.
- Click Catalog.
- Select the desired catalog from the list.
- Click the desired version number. 
- The developer/seller is taken to the version number page for the catalog. 
- Click Delete to bring up the delete modal window. 
- Type DELETE into the textbox. 
- Click Delete. 

**Note:** There are no version numbers for catalog items that are a part of the Service fulfillment type. 

**Images**

Add product logos and images to distinguish catalog items and market them to customers. The image fields are provided below:

| Properties | Description |
| ----------- | ----------- |
| Product logo | The logo for the catalog item’s associated product. This will be displayed on the store page or detail header. |
| Product icon | Product icon that is displayed on the store page or detail header. If the logo and the icon are the same, upload it in the product logo field. |
| Product image | Product image that is displayed on the store page and replaces the product logo and icon. Used for full images instead of icons or logos like modules. |
| Featured image | Product image in detail page. |

***Adding product images***

- From the main dashboard, click Marketplace.
- Click Catalog.
- Select the desired catalog from the list.
- In the images section select Choose File under the desired type of image. 
- Choose the image from Windows Explorer or Finder. 
- If uploading multiple image types, repeat the 4th and 5th step for each image type.
- Click Save. 


**Product Information**

Provide product descriptions and overviews to distinguish catalog items, product features to market those items to customers, product support text to assist customers and collaborators with application troubleshooting, and product instructions to configure and use the applications associated with catalog items.  


| Properties | Description |
| ----------- | ----------- |
| Product description/introduction | Product introduction displayed on the store page. 90-character limit. | 
| Product overview | Product introduction on the detail page. 200-character limit. Do not use html tags. | 
| Product features | Product features section in the detail page. 10,000-character limit. |
| Product details | Product details in the right column of the detail page. 10,000-character limit. |
| Product support text | Product support content in the detail page. 10,000-character limit. |
| Product instructions | Product instructions content in the detail page. 10,000-character limit. |

***Adding Production Information***

- From the main dashboard, click Marketplace.
- Click Catalog.
- Select the desired catalog from the list.
- Enter the product description/introduction, the product overview, product features, product details, product support text, and product instructions into the associated text boxes. 
- Click Save.

**Catalog Plans** 

Provide licensed or subscription-based services to customers. 

| Properties | Description |
| ----------- | ----------- |
| Recurring plans | Provide a subscription-based service to their customers for a daily, weekly, monthly, or annual fee. |
| One-time plans | Provide a licensed based service to their customers for a one-time fee. |

***Adding a catalog plan***

Catalog plans allows sellers and resellers to decide whether to provide licensed or subscription-based services to their customers. A one-time plan allows customers to purchase a license from the provider for a one-time fee. A recurring plan allows customers to subscribe to a provider’s service for a daily, weekly, monthly, or annual fee. 

***Adding a recurring plan***

- From the main dashboard, click Marketplace.
- Click Catalog.
- Select the desired catalog from the list.
- Click the **+** sign beside Recurring plans to bring up a modal window.
- Enter the Title.
- Select the Status.
- Select a billing period from daily, weekly, monthly or yearly.
- Enter a Price.
- Enter a set-up Fee.
- Click Submit.

***Editing a recurring plan***

- From the main dashboard, click Marketplace.
- Click Catalog.
- Select the desired catalog from the list.
- Select the new recurring plan.
- Enter the new Title. 
- Enter the new Status.
- Enter a new billing period.
- Enter a new Price.
- Enter a new set-up Fee.
- Enter a description. 
- Enter plan details.
- Enter YAML build parameters.
- Enter a Catalog Plan add-ons.
- Click Update.

***Deleting a recurring plan***

- From the main dashboard, click Marketplace.
- Click Catalog.
- Select the desired catalog from the list.
- Click the trash can to the far right to bring up the Delete modal window.
- Type DELETE into the text box and click Submit. 

***Adding a one-time plan***

- Click the + sign beside the Recurring plans to bring up a modal window.
- Enter the Title.
- Select the Status.
- Enter a price.
- Enter the Quantity in the package with a value greater than or equal to 0. 
- Click Submit. 

**Status**

View, publish or remove catalog items from the marketplace. The options for saving changes are provided below. 


| Properties | Description |
| ----------- | ----------- |
| Draft | Save changes without publishing to the front end. |
| Publish | Makes changes publicly available on the front end. |
| Draft URL/Store URL | URL for the catalog item’s store page. |

***Adjusting the Status***

- From the main dashboard, click Marketplace.
- Click Catalog.
- Select the desired catalog from the list.
- Select the desired Status from the select box. 
- Click Save.

**Schedule** 

Set the dates for publication or removal of catalog items. 

| Properties | Description |
| ----------- | ----------- |
| Start | The start date of publication for the catalog item. |
| Stop | The end date of publication for the catalog item. |

***Setting a schedule***

- From the main dashboard, click Marketplace.
- Click Catalog.
- Select the desired catalog from the list.
- Select a start date from the calendar. 
- Select a stop date from the calendar. 
- Click Save. 

**Note:** To publish a catalog item indefinitely leave the stop date blank. 

**Sorting catalog items**

Developers, sellers, and resellers can reorder catalog items displayed on the catalog page in three ways: 
- Sort the catalogs items by Name, Type, Rank, Modified, and Author.
- Reorder catalogs using the rank feature. ??
- Dragging and dropping catalog items into their desired order. 

***Sorting catalog items***

- From the main menu, click Marketplace.
- In the marketplace menu click Catalog to bring up the catalog page with the list of catalog items. 
- To sort catalog items by name, type, rank, date modified, and author click the double arrows located to the right of the respective column headings. 
- Solodev Cloud users can toggle each field in ascending or descending order.


[^1]: Available in infrastructure and addon fulfillment types.


