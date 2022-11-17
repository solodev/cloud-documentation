# Buildspec Details

Buildspec is available for users in each <a href="/marketplace/items/">item</a> page in section <a href="/marketplace/">Marketplace</a>. To start creating a custom formular you need to open some <a href="/marketplace/items/read">item</a>.

><img src="../../../images/buildspec.jpg" alt="buildspec" style="width: 100%; display: block"></a>

## Step 1: Learn about Buildspec

### Forms

Using the form param, you can define your form with all its required fields. The basic structure of the content follows this format:

!!!
<p>form: // beginning the form definition section<br>
- id: {name} // unique identifier of the field<br>
    type: {field_type} // type of the field<br>
    label: {Some Label} // label connected with this field<br>
    description: {Test description for the name field} // helper text displayed under the label<br>
    required: {true|false} // requirement flag<br>
    autofocus: {true|false} // this field will gain focus right after the page load<br>
    hideLabel: {true|false} // if you need to turn off the label<br>
    placeholder: {Placeholder text} // useful with input or dropdown fields<br>
- id: {name}<br>
    ...</p>
!!!

With Buildspec, you can put your form into a structure, using such elements as panels, columns, dividers, or headers.

---

**Field types**


Field types are different kinds of question formats that a user can assign to a form. The type section controls how the questions are formatted in the UI as well as the types of responses that are expected or required.

!!!Available formats include:

<p>-hidden – No field will be shown in the UI, but the value will be stored in the form.<br>
-string – A textbox will be shown in the UI to capture the answer, and the answer will be formatted to a string.<br>
-clob – A text area will be shown in the UI to capture the answer, and the answer will be formatted to a multiline string.<br>
-email – Behaves just like a string type, but with e-mail address validation.<br>
-password – A password style of the textbox will be shown in the UI to capture the answer, and the value will be dotted and formatted to a string.<br>
-url – Behaves just like a string type, but with the URL validation.<br>
-boolean – A checkbox will be shown in the UI to capture the answer, and the answer will be entered as true if the checkbox is selected or false otherwise.<br>
-enum – A drop-down menu will be shown in the UI and the options section will be populated in the menu. The multiple options set to true will enable a multiple-choice type of drop-down, while the expanded option set to true will change the dropdown into a radio button group.<br>
-color – A color picker will be shown in the UI to capture the answer, and the answer will be formatted to the string with a # sign at the beginning.<br>
-date – A date picker will be shown in the UI to capture the answer, and the value will be formatted to the string.<br>
-tel – Behaves just like a string type, but with telephone number validation (ie. digits and dashes).<br>
-datetime – A date-time picker will be shown in the UI to capture the answer, and the value will be formatted to the string.<br>
-time – A time picker will be shown in the UI to capture the answer, and the value will be formatted to the string.<br>
-integer – A number picker will be shown in the UI to capture the answer, and the value will be validated to confirm if it is an integer.<br>
-money – Behaves just like a string type but with number validation and a  $ sign that precedes the textbox.<br>
-number – Behaves just like a string type but with number validation.<br>
-percent – Behaves just like a string type but with number validation and a  % sign that follows the textbox.</p>
!!!
---

**Format parameters**

With Buildspec, you can put your form into a structure, using such elements as panels, columns, dividers, or headers.

For more details on building a form structure, click here.

### Builds

Using the build param, you can provide default values for questions asked in Cloud Formation Templates. The basic structure of the param looks like this:

!!!
<p>build: // beginning of the build section<br>
-ParameterKey: AppVersion // key of the parameter<br>
 ParameterValue: latest // value of the paramter<br>
-ParameterKey: DatabasePassword<br>
...</p>
!!!

## Step 2: Create a custom form

### Enter the formula 

Here you have two windows. On the left, you can put the formula. On the right, you have the form preview.

><img src="../../../images/buildspec2.jpg" alt="buildspec2" style="width: 100%; display: block"></a>

### Save

Click the blue save button to save any changes you have made (note, the item does not auto-save so you must save changes you want to keep).

><img src="../../../images/pages-details7.jpg" alt="pages-details7" style="width: 40%; display: block"></a>