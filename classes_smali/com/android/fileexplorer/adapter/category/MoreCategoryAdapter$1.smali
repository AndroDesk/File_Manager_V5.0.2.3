.class Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$1;
.super Ljava/lang/Object;
.source "MoreCategoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->setItemOnTouchHelper(Lcom/android/fileexplorer/model/category/BaseItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

.field public final synthetic val$item:Lcom/android/fileexplorer/model/category/BaseItem;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;Lcom/android/fileexplorer/model/category/BaseItem;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$1;->val$item:Lcom/android/fileexplorer/model/category/BaseItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->access$000(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_41

    const/4 p2, 0x1

    if-eq p1, p2, :cond_39

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1c

    const/4 p2, 0x3

    if-eq p1, p2, :cond_39

    goto :goto_4a

    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    invoke-static {v0}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->access$100(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x64

    cmp-long p1, p1, v0

    if-lez p1, :cond_4a

    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    invoke-static {p1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->access$200(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;)Landroidx/recyclerview/widget/f;

    move-result-object p1

    iget-object p2, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$1;->val$item:Lcom/android/fileexplorer/model/category/BaseItem;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/f;->startDrag(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    goto :goto_4a

    :cond_39
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->access$102(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;J)J

    goto :goto_4a

    :cond_41
    iget-object p1, p0, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter$1;->this$0:Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;->access$102(Lcom/android/fileexplorer/adapter/category/MoreCategoryAdapter;J)J

    :cond_4a
    :goto_4a
    const/4 p1, 0x0

    return p1
.end method
