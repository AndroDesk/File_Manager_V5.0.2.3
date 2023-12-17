.class public Lmiuix/responsive/page/FloatingActivity;
.super Lmiuix/responsive/page/ResponsiveActivity;
.source "FloatingActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lmiuix/responsive/page/ResponsiveActivity;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->configureFloatingService(Landroid/content/Intent;Ljava/lang/String;)V

    .line 12
    invoke-super {p0, p1}, Lmiuix/responsive/page/ResponsiveActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFloatingWindowTheme()Z

    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_15

    .line 21
    return-void

    .line 22
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    const-string v0, "You need to use a miui floating theme (or descendant) with this activity."

    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-static {v0, v1, p1}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->onSaveInstanceState(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 15
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-static {p1, p0}, Lmiuix/appcompat/app/floatingactivity/multiapp/MultiAppFloatingActivitySwitcher;->configureFloatingService(Landroid/content/Intent;Lmiuix/appcompat/app/AppCompatActivity;)V

    .line 4
    invoke-super {p0, p1, p2}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 7
    return-void
.end method
