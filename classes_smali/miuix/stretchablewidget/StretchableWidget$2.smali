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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/stretchablewidget/StretchableWidget;)V
    .registers 2

    iput-object p1, p0, Lmiuix/stretchablewidget/StretchableWidget$2;->this$0:Lmiuix/stretchablewidget/StretchableWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public syncMessage(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiuix/stretchablewidget/StretchableWidget$2;->this$0:Lmiuix/stretchablewidget/StretchableWidget;

    invoke-virtual {v0, p1}, Lmiuix/stretchablewidget/StretchableWidget;->setDetailMessage(Ljava/lang/CharSequence;)V

    return-void
.end method
