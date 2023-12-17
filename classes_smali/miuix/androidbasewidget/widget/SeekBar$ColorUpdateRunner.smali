.class Lmiuix/androidbasewidget/widget/SeekBar$ColorUpdateRunner;
.super Ljava/lang/Object;
.source "SeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/androidbasewidget/widget/SeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorUpdateRunner"
.end annotation


# instance fields
.field private mSeekBarRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/androidbasewidget/widget/SeekBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiuix/androidbasewidget/widget/SeekBar;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$ColorUpdateRunner;->mSeekBarRef:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$ColorUpdateRunner;->mSeekBarRef:Ljava/lang/ref/WeakReference;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_c

    .line 7
    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lmiuix/androidbasewidget/widget/SeekBar;

    .line 13
    :goto_c
    if-eqz v0, :cond_11

    .line 15
    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1100(Lmiuix/androidbasewidget/widget/SeekBar;)V

    .line 18
    :cond_11
    return-void
.end method
