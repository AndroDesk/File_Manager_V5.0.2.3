.class public Lcom/android/fileexplorer/model/AdFileItem;
.super Lcom/android/fileexplorer/dao/file/FileItem;
.source "AdFileItem.java"


# instance fields
.field private adGridView:Landroid/view/View;

.field private adIndex:[I

.field private adListView:Landroid/view/View;

.field private postId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/fileexplorer/dao/file/FileItem;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/model/AdFileItem;->postId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/fileexplorer/model/AdFileItem;->adListView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/fileexplorer/model/AdFileItem;->adGridView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getAdGridView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/AdFileItem;->adGridView:Landroid/view/View;

    return-object v0
.end method

.method public getAdIndex()[I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/AdFileItem;->adIndex:[I

    return-object v0
.end method

.method public getAdListView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/AdFileItem;->adListView:Landroid/view/View;

    return-object v0
.end method

.method public getPostId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/model/AdFileItem;->postId:Ljava/lang/String;

    return-object v0
.end method
