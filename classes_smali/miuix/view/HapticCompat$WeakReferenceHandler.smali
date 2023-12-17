.class Lmiuix/view/HapticCompat$WeakReferenceHandler;
.super Ljava/lang/Object;
.source "HapticCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/view/HapticCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeakReferenceHandler"
.end annotation


# instance fields
.field private final mFeedbackConstant:I

.field private final mViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lmiuix/view/HapticCompat$WeakReferenceHandler;->mViewReference:Ljava/lang/ref/WeakReference;

    .line 11
    iput p2, p0, Lmiuix/view/HapticCompat$WeakReferenceHandler;->mFeedbackConstant:I

    .line 13
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/view/HapticCompat$WeakReferenceHandler;->mViewReference:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/View;

    .line 9
    if-eqz v0, :cond_15

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_15

    .line 17
    :try_start_10
    iget v1, p0, Lmiuix/view/HapticCompat$WeakReferenceHandler;->mFeedbackConstant:I

    .line 19
    invoke-static {v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_15

    .line 22
    :catch_15
    :cond_15
    return-void
.end method
