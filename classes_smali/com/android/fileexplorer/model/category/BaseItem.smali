.class public Lcom/android/fileexplorer/model/category/BaseItem;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "BaseItem.java"


# instance fields
.field public mClickListener:Landroid/view/View$OnClickListener;

.field public mLongClickListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    .line 4
    return-void
.end method


# virtual methods
.method public bindView(II)V
    .registers 3

    return-void
.end method

.method public bindView(ILcom/android/fileexplorer/model/category/FileCategoryEntity;ZI)V
    .registers 5

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/model/category/BaseItem;->mClickListener:Landroid/view/View$OnClickListener;

    .line 3
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/model/category/BaseItem;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 3
    return-void
.end method
