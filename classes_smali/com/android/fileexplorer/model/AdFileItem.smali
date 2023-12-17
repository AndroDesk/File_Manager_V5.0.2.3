.class public Lcom/android/fileexplorer/model/AdFileItem;
.super Lcom/android/fileexplorer/dao/file/FileItem;
.source "AdFileItem.java"


# instance fields
.field private adGridView:Landroid/view/View;

.field private adIndex:[I

.field private adListView:Landroid/view/View;

.field private postId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/dao/file/FileItem;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/model/AdFileItem;->postId:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/model/AdFileItem;->adListView:Landroid/view/View;

    .line 8
    iput-object p3, p0, Lcom/android/fileexplorer/model/AdFileItem;->adGridView:Landroid/view/View;

    .line 10
    return-void
.end method


# virtual methods
.method public getAdGridView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/AdFileItem;->adGridView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getAdIndex()[I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/AdFileItem;->adIndex:[I

    .line 3
    return-object v0
.end method

.method public getAdListView()Landroid/view/View;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/AdFileItem;->adListView:Landroid/view/View;

    .line 3
    return-object v0
.end method

.method public getPostId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/model/AdFileItem;->postId:Ljava/lang/String;

    .line 3
    return-object v0
.end method
