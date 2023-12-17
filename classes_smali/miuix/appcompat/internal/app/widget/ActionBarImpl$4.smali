.class Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;
.super Ljava/lang/Object;
.source "ActionBarImpl.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->init(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public lastWidth:I

.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;->lastWidth:I

    .line 9
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$300(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 10
    move-result v0

    .line 11
    iget v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;->lastWidth:I

    .line 13
    if-ne v1, v0, :cond_19

    .line 15
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 17
    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_17

    .line 23
    goto :goto_19

    .line 24
    :cond_17
    const/4 v0, 0x1

    .line 25
    return v0

    .line 26
    :cond_19
    :goto_19
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-static {v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$402(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Z)Z

    .line 32
    iput v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;->lastWidth:I

    .line 34
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 36
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 39
    move-result-object v1

    .line 40
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 42
    invoke-static {v3}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$600(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 45
    move-result-object v3

    .line 46
    invoke-static {v0, v1, v3}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    .line 49
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$4;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 51
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$300(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 62
    return v2
.end method
