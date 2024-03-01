<%@ Control Language="C#" AutoEventWireup="true" CodeFile="OpenAuthProviders.ascx.cs" Inherits="OpenAuthProviders" %>

<div id="socialLoginList">
    <h4>Use another service to log in.</h4>
    <hr />
    <asp:ListView runat="server" ID="providerDetails" ItemType="System.String"
        SelectMethod="GetProviderNames" ViewStateMode="Disabled">
        <ItemTemplate>
            <p>
                <button type="submit" class="btn btn-default" name="provider" value="<%#: Item %>"
                    title="Log in using your <%#: Item %> account.">
                    <%#: Item %>
                </button>
            </p>
        </ItemTemplate>
        <EmptyDataTemplate>
            <div>
                <p>There are no external authentication services configured. this article</a> for details on setting up this CFC application to support logging in via external services.</p>
            </div>
        </EmptyDataTemplate>
    </asp:ListView>
</div>