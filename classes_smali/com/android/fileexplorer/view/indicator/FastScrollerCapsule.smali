.class public abstract Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;
.super Ljava/lang/Object;
.source "FastScrollerCapsule.java"

# interfaces
.implements Lcom/android/fileexplorer/view/indicator/DrawView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule$OnAnimatorListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_MARGIN_TO_THUMB:I = 0x2e


# instance fields
.field public mCapsuleMarginToThumb:I

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->mContext:Landroid/content/Context;

    .line 6
    return-void
.end method


# virtual methods
.method public abstract cancelHideCapsule()V
.end method

.method public abstract cancelShowCapsule()V
.end method

.method public getCapsuleMarginToThumb()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->mCapsuleMarginToThumb:I

    .line 3
    return v0
.end method

.method public abstract hideCapsule()V
.end method

.method public abstract hideCapsuleByAnimator()V
.end method

.method public setCapsuleMarginToThumb(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->mCapsuleMarginToThumb:I

    .line 3
    return-void
.end method

.method public abstract setContent(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsuleContentProvider;)V
.end method

.method public abstract setIsInRight(Z)V
.end method

.method public abstract setOnAnimatorListener(Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule$OnAnimatorListener;)V
.end method

.method public abstract showCapsule()V
.end method

.method public abstract showCapsuleByAnimator()V
.end method
