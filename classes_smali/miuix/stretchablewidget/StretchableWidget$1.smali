.class Lmiuix/stretchablewidget/StretchableWidget$1;
.super Ljava/lang/Object;
.source "StretchableWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/stretchablewidget/StretchableWidget;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    iput-object p1, p0, Lmiuix/stretchablewidget/StretchableWidget$1;->this$0:Lmiuix/stretchablewidget/StretchableWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lmiuix/stretchablewidget/StretchableWidget$1;->this$0:Lmiuix/stretchablewidget/StretchableWidget;

    invoke-static {p1}, Lmiuix/stretchablewidget/StretchableWidget;->access$000(Lmiuix/stretchablewidget/StretchableWidget;)V

    return-void
.end method
