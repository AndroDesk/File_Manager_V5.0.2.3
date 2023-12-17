.class public Lcom/android/fileexplorer/dao/fav/Favorite;
.super Ljava/lang/Object;
.source "Favorite.java"


# instance fields
.field private id:Ljava/lang/Long;

.field private location:Ljava/lang/String;

.field private title:Ljava/lang/String;


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

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/dao/fav/Favorite;->id:Ljava/lang/Long;

    iput-object p2, p0, Lcom/android/fileexplorer/dao/fav/Favorite;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/fileexplorer/dao/fav/Favorite;->location:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/fav/Favorite;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/fav/Favorite;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/dao/fav/Favorite;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/fav/Favorite;->id:Ljava/lang/Long;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/fav/Favorite;->location:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/dao/fav/Favorite;->title:Ljava/lang/String;

    return-void
.end method
