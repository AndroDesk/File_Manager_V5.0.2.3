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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V
    .registers 2

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$4;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_b

    :cond_6
    iget-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$4;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    invoke-static {p1}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->access$600(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;)V

    :goto_b
    return-void
.end method
