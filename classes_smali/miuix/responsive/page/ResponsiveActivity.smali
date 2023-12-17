.class public Lmiuix/responsive/page/ResponsiveActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "ResponsiveActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/appcompat/app/AppCompatActivity;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "ResponsiveActivity"


# instance fields
.field private mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private notifyResponseOnCreate()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lmiuix/responsive/page/ResponsiveActivity;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->notifyResponseOnCreate()V

    :cond_7
    return-void
.end method


# virtual methods
.method public afterConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->afterConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lmiuix/responsive/page/ResponsiveActivity;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->afterConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_a
    return-void
.end method

.method public beforeConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->beforeConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lmiuix/responsive/page/ResponsiveActivity;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->beforeConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_12
    return-void
.end method

.method public bindResponseView(Landroid/view/ViewGroup;Lmiuix/responsive/interfaces/IViewResponsive;)V
    .registers 4

    iget-object v0, p0, Lmiuix/responsive/page/ResponsiveActivity;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->bindResponseView(Landroid/view/ViewGroup;Lmiuix/responsive/interfaces/IViewResponsive;)V

    :cond_7
    return-void
.end method

.method public checkNotifyResponseOnCreate()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getResponsiveState()Lmiuix/responsive/map/ResponsiveState;
    .registers 2

    iget-object v0, p0, Lmiuix/responsive/page/ResponsiveActivity;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-virtual {v0}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->getState()Lmiuix/responsive/map/ResponsiveState;

    move-result-object v0

    return-object v0
.end method

.method public getResponsiveSubject()Landroid/app/Activity;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic getResponsiveSubject()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lmiuix/responsive/page/ResponsiveActivity;->getResponsiveSubject()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public isRegisterResponsive()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lmiuix/responsive/page/ResponsiveActivity;->isRegisterResponsive()Z

    move-result p1

    if-nez p1, :cond_19

    new-instance p1, Lmiuix/responsive/page/ResponsiveActivity$1;

    invoke-direct {p1, p0, p0}, Lmiuix/responsive/page/ResponsiveActivity$1;-><init>(Lmiuix/responsive/page/ResponsiveActivity;Lmiuix/responsive/interfaces/IResponsive;)V

    iput-object p1, p0, Lmiuix/responsive/page/ResponsiveActivity;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-virtual {p0}, Lmiuix/responsive/page/ResponsiveActivity;->checkNotifyResponseOnCreate()Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-direct {p0}, Lmiuix/responsive/page/ResponsiveActivity;->notifyResponseOnCreate()V

    :cond_19
    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/responsive/page/ResponsiveActivity;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    return-void
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;Lmiuix/responsive/map/ScreenSpec;Z)V
    .registers 4

    return-void
.end method

.method public testNotifyResponseChange(I)V
    .registers 3

    iget-object v0, p0, Lmiuix/responsive/page/ResponsiveActivity;->mResponsiveStateManager:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiuix/responsive/page/manager/BaseResponseStateManager;->testNotifyResponseChange(I)V

    :cond_7
    return-void
.end method
