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
.field public static final DEFAULT_MARGIN_TO_THUMB:I


# instance fields
.field public mCapsuleMarginToThumb:I

.field public mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x92db8

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    sput v0, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->DEFAULT_MARGIN_TO_THUMB:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract cancelHideCapsule()V
.end method

.method public abstract cancelShowCapsule()V
.end method

.method public getCapsuleMarginToThumb()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->mCapsuleMarginToThumb:I

    return v0
.end method

.method public abstract hideCapsule()V
.end method

.method public abstract hideCapsuleByAnimator()V
.end method

.method public setCapsuleMarginToThumb(I)V
    .registers 2

    iput p1, p0, Lcom/android/fileexplorer/view/indicator/FastScrollerCapsule;->mCapsuleMarginToThumb:I

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
