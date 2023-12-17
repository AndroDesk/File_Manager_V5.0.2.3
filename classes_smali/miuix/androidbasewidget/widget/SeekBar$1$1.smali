.class Lmiuix/androidbasewidget/widget/SeekBar$1$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/androidbasewidget/widget/SeekBar$1;->onProgressChanged(Landroid/widget/SeekBar;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lmiuix/androidbasewidget/widget/SeekBar$1;


# direct methods
.method public constructor <init>(Lmiuix/androidbasewidget/widget/SeekBar$1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/SeekBar$1$1;->this$1:Lmiuix/androidbasewidget/widget/SeekBar$1;

    .line 3
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p1, "progress"

    .line 3
    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_13

    .line 9
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 12
    move-result p1

    .line 13
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/SeekBar$1$1;->this$1:Lmiuix/androidbasewidget/widget/SeekBar$1;

    .line 15
    iget-object p2, p2, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    .line 17
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 20
    :cond_13
    return-void
.end method
