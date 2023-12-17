.class public Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;
.super Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;
.source "CloudNotificationBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;
    }
.end annotation


# instance fields
.field private mBarType:Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;

.field private mHintType:Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;

.field private mIsOperated:Z

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;->mIsOperated:Z

    .line 7
    iput-object p1, p0, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;->msg:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;->mBarType:Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;

    .line 11
    iput-object p3, p0, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;->mHintType:Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;

    .line 13
    return-void
.end method


# virtual methods
.method public canBeClosed()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public click(Landroid/content/Context;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;->mHintType:Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;

    .line 3
    sget-object v1, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;->SPACE_FULL:Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;

    .line 5
    if-ne v0, v1, :cond_d

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-static {p1, v0}, Lcom/android/cloud/util/CloudHelper;->visitMemberShipSite(Landroid/content/Context;Z)V

    .line 11
    invoke-static {}, Lcom/android/fileexplorer/statistics/StatHelper;->clickFull()V

    .line 14
    :cond_d
    return-void
.end method

.method public getActionTitleId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBarType()Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;->mBarType:Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;

    .line 3
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;->msg:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public hideClick(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;->hideClick(Landroid/content/Context;)V

    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;->mIsOperated:Z

    .line 7
    return-void
.end method

.method public isOperated()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;->mIsOperated:Z

    .line 3
    return v0
.end method

.method public setMessageAndHintType(Ljava/lang/String;Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;->msg:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;->mHintType:Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;

    .line 5
    return-void
.end method
