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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lmiuix/androidbasewidget/widget/SeekBar;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$ColorUpdateRunner;->mSeekBarRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$ColorUpdateRunner;->mSeekBarRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/androidbasewidget/widget/SeekBar;

    :goto_c
    if-eqz v0, :cond_11

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1100(Lmiuix/androidbasewidget/widget/SeekBar;)V

    :cond_11
    return-void
.end method
