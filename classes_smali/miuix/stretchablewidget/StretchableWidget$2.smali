.class Lmiuix/stretchablewidget/StretchableWidget$2;
.super Ljava/lang/Object;
.source "StretchableWidget.java"

# interfaces
.implements Lmiuix/stretchablewidget/SyncDetailMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/stretchablewidget/StretchableWidget;->setView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/stretchablewidget/StretchableWidget;


# direct methods
.method public constructor <init>(Lmiuix/stretchablewidget/StretchableWidget;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/stretchablewidget/StretchableWidget$2;->this$0:Lmiuix/stretchablewidget/StretchableWidget;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public syncMessage(Ljava/lang/String;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget$2;->this$0:Lmiuix/stretchablewidget/StretchableWidget;

    .line 3
    invoke-virtual {v0, p1}, Lmiuix/stretchablewidget/StretchableWidget;->setDetailMessage(Ljava/lang/CharSequence;)V

    .line 6
    return-void
.end method
