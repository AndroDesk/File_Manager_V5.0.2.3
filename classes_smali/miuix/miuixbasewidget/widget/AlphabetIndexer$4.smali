.class Lmiuix/miuixbasewidget/widget/AlphabetIndexer$4;
.super Landroid/os/Handler;
.source "AlphabetIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/miuixbasewidget/widget/AlphabetIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;


# direct methods
.method public constructor <init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$4;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_6

    .line 6
    goto :goto_b

    .line 7
    :cond_6
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$4;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    .line 9
    invoke-static {p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$600(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V

    .line 12
    :goto_b
    return-void
.end method
