.class public Lcom/android/fileexplorer/model/category/BaseItem;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "BaseItem.java"


# instance fields
.field public mClickListener:Landroid/view/View$OnClickListener;

.field public mLongClickListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

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

    iput-object p1, p0, Lcom/android/fileexplorer/model/category/BaseItem;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/model/category/BaseItem;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method
