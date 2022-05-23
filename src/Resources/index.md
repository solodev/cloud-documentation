# Resources

---


## Buildspec

**What is Solodev Buildspec?**

Solodev Buildspec is a specialized set of build commands and settings used for creating custom forms. Use buildspect to define form fields, capture form answers, and provide values for specific applications. Buildpsec utilizes clear and simple YAML syntax and is used to power catalogs items in Solodev Cloud. 

A Marketplace Seller subscription allows you to customize your forms and define questions for buyers while configuring services. You can also use Buildspec to collect and pass values for various parameters in AWS CloudFormation Templates.

Anywhere that questions need to be asked – or answers provided – Buildspec can be used to customize a form and capture the necessary information.

**Forms**

Using the form param, you can define your form with all its required fields. The basic structure of the content follows this format:

```yaml

form: // beginning the form definition section
  - id: {name} // unique identifier of the field
    type: {field_type} // type of the field
    label: {Some Label} // label connected with this field
    description: {Test description for the name field} // helper text displayed under the label
    required: {true|false} // requirement flag
    autofocus: {true|false} // this field will gain focus right after the page load
    hideLabel: {true|false} // if you need to turn off the label
    placeholder: {Placeholder text} // useful with input or dropdown fields
  - id: {name}
    ...

```

***Field Types***

The type section controls the format of specific form questions in the UI and the expected or required responses.

Learn more about managing field types and their available formats. 

 

***Formatting Params***

Buildspec allows you to structure your form with panels, columns, dividers, or headers.

Learn about building a form structure. 

**Builds**

Use the build param to provide default values for questions asked in Cloud Formation Templates. The basic structure of the param looks like this:

```yaml

build: // beginning of the build section
  - ParameterKey: AppVersion // key of the parameter
    ParameterValue: latest // value of the paramter
  - ParameterKey: DatabasePassword
    ...

```

The `build` section currently has two subsections, but will be able to accomodate future needs. To add value to any parameter in the CFT, you must provide its key – so the parameter and the value can be matched during the build. 

## Buildspec field types

**Field types**

Field types are different kinds of question formats that a user can assign to a form. The type section controls the format of the questions and the required or expected response types. 

Available formats include:

- `hidden` – No field will be shown in the UI, but the value will be stored in the form.

- `string` – A textbox will be shown in the UI to capture the answer, and the answer will be formatted to a string.

- `clob` – A text area will be shown in the UI to capture the answer, and the answer will be formatted to a multiline string.

- `email` – Behaves just like a string type, but with e-mail address validation.

- `password` – A password style of textbox will be shown in the UI to capture the answer, and the value will be dotted and formatted to a string.

- `url` – Behaves just like a string type, but with the URL validation.

- `boolean` – A checkbox will be shown in the UI to capture the answer, and the answer will be entered as true if the checkbox is selected or false otherwise.

- `enum` – A dropdown menu will be shown in the UI and the options section will be populated in the menu. The multiple option set to true will enable a multiple choice type of a drop-down, while the expanded option set to true will change the dropdown into a radio button group.

- `color` – A color picker will be shown in the UI to capture the answer, and the answer will be formatted to the string with a # sign at the beginning.

- `date` – A date picker will be shown in the UI to capture the answer, and the value will be formatted to the string.

- `tel` – Behaves just like a string type, but with telephone number validation (ie. digits and dashes).

- `datetime` – A date-time picker will be shown in the UI to capture the answer, and the value will be formatted to the string.

- `time` – A time picker will be shown in the UI to capture the answer, and the value will be formatted to the string.

- `integer` – A number picker will be shown in the UI to capture the answer, and the value will be validated to confirm if it is an integer.

- `money` – Behaves just like a string type but with number validation and a  $ sign that precedes the textbox.

- `number` – Behaves just like a string type but with number validation.

- `percent` – Behaves just like a string type but with number validation and a  % sign that follows the textbox.

Here's an example of a complete Buildspec with field types:

```yaml 

form:
  - id: secretToken
    type: hidden
    hideLabel: true
  - id: name
    type: string
    label: My Name
    description: Test description for the name field
    required: true
    autofocus: true
  - id: description
    type: clob
    label: Description
    description: Test description for the description field
    required: false
  - id: email
    type: email
    label: Email
    description: Give me your email so that I may spam you
    required: true
  - id: password
    type: password
    label: Password
    description: I want access to all your data
    required: false
  - id: website
    type: url
    label: Web site
    description: What is your website?
  - id: blahEnabled
    type: boolean
    label: Blah Enabled?
  - id: favoriteFood
    type: enum
    placeholder: -- Please choose one --
    options:
      expanded: false
      multiple: false
      choices:
        American: american
        Chinese: chinese
        French: french
        German: german
        Italian: italian
        Japanese: japanese
        Korean: korean
        Other: other
        Polish: polish
    label: Favorite Food
    description: What's your favorite type of food?
    required: true
  - id: favoriteColor
    type: color
    label: Favorite Color
    description: What's your favorite color?
  - id: dob
    type: date
    label: Date of Birth
    description: When did you awake from the eternal sleep?
  - id: homePhone
    type: tel
    label: Home Phone
    description: >
      I need your home phone so that I can sell this to robocall
      companies.
    placeholder: ex. 555-555-1234
  - id: expiration
    type: datetime
    label: Expiration Date
    description: >
      I'm not sure what is expiring but at least
      tell me when it should.
    placeholder: yyyy-MM-dd HH:mm:ss
  - id: bestTime
    type: time
    label: Best Time
    description: >
      What time of the day is the "best time"?
  - id: numCars
    type: integer
    label: Number of Cars
    description: >
      Tell me how many cars you own so I can sell
      this information to auto dealers.
    placeholder: ex. 2
  - id: salary
    type: money
    label: Annual Salary
    description: >
      Tell me your salary so can I sell this
      information to sleeze finance types.
  - id: randomNumber
    type: number
    label: Random Number
    description: >
      Pick a number game. Can you guess it?
      You won't win anything regardless.
  - id: testPct
    type: percent
    label: Chance of Escape
    description: >
      What do you think your chances are of
      getting out alive? (creepy)

```

## Connecting your DNS

After creating a website, developers can use the origin URLs provided to update their DNS tables and launch their website.  The steps to access the origin URL and update your DNS tables are provided below: 

 

**Step 1 – Accessing the origin URL**

- From the Solodev Dashboard click Websites

- Click the card for the newly created website.

- The origin URL is listed on the right of the website preview window.

 

**Step 2 – Connecting your domain/DNS to the website**

- From the Solodev Dashboard click Websites

- Click the card for the newly created website.

- Copy the Origin URL.

- Point your domain to a CNAME using the Origin URL as the CNAME value. 

 