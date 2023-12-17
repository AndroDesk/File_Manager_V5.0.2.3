.class public Lcom/android/fileexplorer/model/FavoriteItem;
.super Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;
.source "FavoriteItem.java"


# instance fields
.field public fileInfo:Lcom/android/fileexplorer/model/FileInfo;

.field private id:J

.field public location:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;-><init>()V

    iput-wide p1, p0, Lcom/android/fileexplorer/model/FavoriteItem;->id:J

    iput-object p3, p0, Lcom/android/fileexplorer/model/FavoriteItem;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/fileexplorer/model/FavoriteItem;->location:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/model/FavoriteItem;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/fileexplorer/model/FavoriteItem;->location:Ljava/lang/String;

    return-void
.end method
