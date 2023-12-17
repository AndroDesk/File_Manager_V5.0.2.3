.class Lmiuix/appcompat/app/AppCompatActivity$Callback;
.super Ljava/lang/Object;
.source "AppCompatActivity.java"

# interfaces
.implements Lmiuix/appcompat/app/ActivityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AppCompatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Callback"
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/appcompat/app/AppCompatActivity;


# direct methods
.method private constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;Lmiuix/appcompat/app/AppCompatActivity$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity$Callback;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-static {v0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->access$1001(Lmiuix/appcompat/app/AppCompatActivity;Landroid/content/res/Configuration;)V

    .line 6
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-static {v0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->access$201(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V

    .line 6
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->access$801(Lmiuix/appcompat/app/AppCompatActivity;ILandroid/view/Menu;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-static {v0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->access$701(Lmiuix/appcompat/app/AppCompatActivity;I)Landroid/view/View;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->access$501(Lmiuix/appcompat/app/AppCompatActivity;ILandroid/view/MenuItem;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/AppCompatActivity;->access$601(Lmiuix/appcompat/app/AppCompatActivity;ILandroid/view/Menu;)V

    .line 6
    return-void
.end method

.method public onPostResume()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/app/AppCompatActivity;->access$301(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 6
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-static {v0, p1, p2, p3}, Lmiuix/appcompat/app/AppCompatActivity;->access$901(Lmiuix/appcompat/app/AppCompatActivity;ILandroid/view/View;Landroid/view/Menu;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-static {v0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->access$1201(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V

    .line 6
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-static {v0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->access$1101(Lmiuix/appcompat/app/AppCompatActivity;Landroid/os/Bundle;)V

    .line 6
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AppCompatActivity$Callback;->this$0:Lmiuix/appcompat/app/AppCompatActivity;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/app/AppCompatActivity;->access$401(Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 6
    return-void
.end method
