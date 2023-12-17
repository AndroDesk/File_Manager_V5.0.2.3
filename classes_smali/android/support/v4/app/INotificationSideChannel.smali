.class public interface abstract Landroid/support/v4/app/INotificationSideChannel;
.super Ljava/lang/Object;
.source "INotificationSideChannel.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/INotificationSideChannel$_Parcel;,
        Landroid/support/v4/app/INotificationSideChannel$Stub;,
        Landroid/support/v4/app/INotificationSideChannel$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    const-string v0, "android$support$v4$app$INotificationSideChannel"

    .line 3
    const/16 v1, 0x24

    .line 5
    const/16 v2, 0x2e

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Landroid/support/v4/app/INotificationSideChannel;->DESCRIPTOR:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public abstract cancel(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract cancelAll(Ljava/lang/String;)V
.end method

.method public abstract notify(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
.end method
