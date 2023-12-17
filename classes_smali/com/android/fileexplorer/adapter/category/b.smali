.class public final synthetic Lcom/android/fileexplorer/adapter/category/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:I

.field public final synthetic d:Lcom/android/fileexplorer/model/category/BaseItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;Landroid/view/ViewGroup;ILcom/android/fileexplorer/model/category/BaseItem;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/category/b;->a:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/category/b;->b:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/android/fileexplorer/adapter/category/b;->c:I

    iput-object p4, p0, Lcom/android/fileexplorer/adapter/category/b;->d:Lcom/android/fileexplorer/model/category/BaseItem;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/b;->a:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/category/b;->b:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/android/fileexplorer/adapter/category/b;->c:I

    iget-object v3, p0, Lcom/android/fileexplorer/adapter/category/b;->d:Lcom/android/fileexplorer/model/category/BaseItem;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->a(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;Landroid/view/ViewGroup;ILcom/android/fileexplorer/model/category/BaseItem;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
