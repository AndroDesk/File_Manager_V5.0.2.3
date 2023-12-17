.class Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;
.super Ljava/lang/Object;
.source "ActionBarImpl.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->lastWidth:I

    .line 9
    return-void
.end method

.method public static synthetic a(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;)V
    .registers 1

    invoke-direct {p0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->lambda$onLayoutChange$0()V

    return-void
.end method

.method private synthetic lambda$onLayoutChange$0()V
    .registers 4

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 3
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 9
    invoke-static {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$600(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarContextView;

    .line 12
    move-result-object v2

    .line 13
    invoke-static {v0, v1, v2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$700(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Lmiuix/appcompat/internal/app/widget/ActionBarView;Lmiuix/appcompat/internal/app/widget/ActionBarContextView;)V

    .line 16
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 1
    sub-int/2addr p4, p2

    .line 2
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->lastWidth:I

    .line 4
    if-ne p1, p4, :cond_d

    .line 6
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 8
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$400(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_24

    .line 14
    :cond_d
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-static {p1, p2}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$402(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;Z)Z

    .line 20
    iput p4, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->lastWidth:I

    .line 22
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$5;->this$0:Lmiuix/appcompat/internal/app/widget/ActionBarImpl;

    .line 24
    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl;->access$500(Lmiuix/appcompat/internal/app/widget/ActionBarImpl;)Lmiuix/appcompat/internal/app/widget/ActionBarView;

    .line 27
    move-result-object p1

    .line 28
    new-instance p2, Lmiuix/appcompat/internal/app/widget/a;

    .line 30
    const/4 p3, 0x1

    .line 31
    invoke-direct {p2, p0, p3}, Lmiuix/appcompat/internal/app/widget/a;-><init>(Ljava/lang/Object;I)V

    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 37
    :cond_24
    return-void
.end method
