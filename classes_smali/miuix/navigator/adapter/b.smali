.class public final synthetic Lmiuix/navigator/adapter/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView$b0;

.field public final synthetic c:Lmiuix/navigator/adapter/CategoryAdapter;


# direct methods
.method public synthetic constructor <init>(Lmiuix/navigator/adapter/CategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 4

    .line 1
    iput p3, p0, Lmiuix/navigator/adapter/b;->a:I

    .line 3
    iput-object p1, p0, Lmiuix/navigator/adapter/b;->c:Lmiuix/navigator/adapter/CategoryAdapter;

    .line 5
    iput-object p2, p0, Lmiuix/navigator/adapter/b;->b:Landroidx/recyclerview/widget/RecyclerView$b0;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    iget v0, p0, Lmiuix/navigator/adapter/b;->a:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_11

    :pswitch_6  #0x0
    iget-object v0, p0, Lmiuix/navigator/adapter/b;->c:Lmiuix/navigator/adapter/CategoryAdapter;

    check-cast v0, Lmiuix/navigator/adapter/ListCategoryAdapter;

    iget-object v1, p0, Lmiuix/navigator/adapter/b;->b:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-static {v0, v1, p1, p2}, Lmiuix/navigator/adapter/ListCategoryAdapter;->d(Lmiuix/navigator/adapter/ListCategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :goto_11
    iget-object v0, p0, Lmiuix/navigator/adapter/b;->c:Lmiuix/navigator/adapter/CategoryAdapter;

    check-cast v0, Lmiuix/navigator/adapter/MenuCategoryAdapter;

    iget-object v1, p0, Lmiuix/navigator/adapter/b;->b:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-static {v0, v1, p1, p2}, Lmiuix/navigator/adapter/MenuCategoryAdapter;->c(Lmiuix/navigator/adapter/MenuCategoryAdapter;Landroidx/recyclerview/widget/RecyclerView$b0;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
