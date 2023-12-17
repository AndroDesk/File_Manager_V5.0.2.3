.class public Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavigationPosition"
.end annotation


# static fields
.field public static CLOUD_GROUP_POSITION:I = 0x1

.field public static HOME_FILE_GROUP_POSITION:I

.field public static RECENT_GROUP_POSITION:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/util/RomUtils;->closeMiDriveTab()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_9

    .line 9
    :cond_8
    const/4 v0, 0x2

    .line 10
    :goto_9
    sput v0, Lcom/android/fileexplorer/adapter/recycle/filegroup/Constants$NavigationPosition;->HOME_FILE_GROUP_POSITION:I

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
