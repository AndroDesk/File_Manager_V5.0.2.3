.class public abstract Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;
.super Ljava/lang/Object;
.source "AbsNotificationBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canBeClosed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract click(Landroid/content/Context;)V
.end method

.method public abstract getActionTitleId()I
.end method

.method public abstract getBarType()Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public hideClick(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public isOperated()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
