.class public Lcom/android/fileexplorer/model/FavoriteItem;
.super Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;
.source "FavoriteItem.java"


# instance fields
.field public fileInfo:Lcom/android/fileexplorer/model/FileInfo;

.field private id:J

.field public location:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 4
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;-><init>()V

    .line 5
    iput-wide p1, p0, Lcom/android/fileexplorer/model/FavoriteItem;->id:J

    .line 6
    iput-object p3, p0, Lcom/android/fileexplorer/model/FavoriteItem;->title:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/android/fileexplorer/model/FavoriteItem;->location:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/fileexplorer/model/FavoriteItem;->title:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/model/FavoriteItem;->location:Ljava/lang/String;

    return-void
.end method
