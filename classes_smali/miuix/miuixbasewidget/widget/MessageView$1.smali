.class Lmiuix/miuixbasewidget/widget/MessageView$1;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/miuixbasewidget/widget/MessageView;->addCloseIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/miuixbasewidget/widget/MessageView;


# direct methods
.method public constructor <init>(Lmiuix/miuixbasewidget/widget/MessageView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/MessageView$1;->this$0:Lmiuix/miuixbasewidget/widget/MessageView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Landroid/view/View;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    .line 14
    move-result-object p1

    .line 15
    const-wide/16 v2, 0x1

    .line 17
    invoke-interface {p1, v2, v3}, Lmiuix/animation/IVisibleStyle;->setFlags(J)Lmiuix/animation/IVisibleStyle;

    .line 20
    move-result-object p1

    .line 21
    new-array v0, v1, [Lmiuix/animation/base/AnimConfig;

    .line 23
    invoke-interface {p1, v0}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    .line 26
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/MessageView$1;->this$0:Lmiuix/miuixbasewidget/widget/MessageView;

    .line 28
    const/16 v0, 0x8

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/MessageView$1;->this$0:Lmiuix/miuixbasewidget/widget/MessageView;

    .line 35
    invoke-static {p1}, Lmiuix/miuixbasewidget/widget/MessageView;->access$000(Lmiuix/miuixbasewidget/widget/MessageView;)Lmiuix/miuixbasewidget/widget/MessageView$OnMessageViewCloseListener;

    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_31

    .line 41
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/MessageView$1;->this$0:Lmiuix/miuixbasewidget/widget/MessageView;

    .line 43
    invoke-static {p1}, Lmiuix/miuixbasewidget/widget/MessageView;->access$000(Lmiuix/miuixbasewidget/widget/MessageView;)Lmiuix/miuixbasewidget/widget/MessageView$OnMessageViewCloseListener;

    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Lmiuix/miuixbasewidget/widget/MessageView$OnMessageViewCloseListener;->onClosed()V

    .line 50
    :cond_31
    return-void
.end method
