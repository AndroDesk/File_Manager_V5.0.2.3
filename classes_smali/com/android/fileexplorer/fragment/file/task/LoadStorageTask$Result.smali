.class public Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask$Result;
.super Ljava/lang/Object;
.source "LoadStorageTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/file/task/LoadStorageTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public device:I

.field public extraPath:Ljava/lang/String;

.field public forceMainSpace:Z

.field public storageInfo:Lcom/android/fileexplorer/model/StorageInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
