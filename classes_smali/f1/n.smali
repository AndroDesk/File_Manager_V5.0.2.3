.class public abstract Lf1/n;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf1/n$f;,
        Lf1/n$e;,
        Lf1/n$d;,
        Lf1/n$g;
    }
.end annotation


# static fields
.field public static final DBG:Z = false

.field private static final DEFAULT_MATCH_ORDER:[I

.field private static final LOG_TAG:Ljava/lang/String; = "Transition"

.field private static final MATCH_FIRST:I = 0x1

.field public static final MATCH_ID:I = 0x3

.field private static final MATCH_ID_STR:Ljava/lang/String; = "id"

.field public static final MATCH_INSTANCE:I = 0x1

.field private static final MATCH_INSTANCE_STR:Ljava/lang/String; = "instance"

.field public static final MATCH_ITEM_ID:I = 0x4

.field private static final MATCH_ITEM_ID_STR:Ljava/lang/String; = "itemId"

.field private static final MATCH_LAST:I = 0x4

.field public static final MATCH_NAME:I = 0x2

.field private static final MATCH_NAME_STR:Ljava/lang/String; = "name"

.field private static final STRAIGHT_PATH_MOTION:Lf1/j;

.field private static sRunningAnimators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/collection/a<",
            "Landroid/animation/Animator;",
            "Lf1/n$d;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public mCanRemoveViews:Z

.field public mCurrentAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public mDuration:J

.field private mEndValues:Lf1/u;

.field private mEndValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lf1/t;",
            ">;"
        }
    .end annotation
.end field

.field private mEnded:Z

.field private mEpicenterCallback:Lf1/n$f;

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lf1/n$g;",
            ">;"
        }
    .end annotation
.end field

.field private mMatchOrder:[I

.field private mName:Ljava/lang/String;

.field private mNameOverrides:Landroidx/collection/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNumInstances:I

.field public mParent:Lf1/r;

.field private mPathMotion:Lf1/j;

.field private mPaused:Z

.field public mPropagation:Lf1/q;

.field private mStartDelay:J

.field private mStartValues:Lf1/u;

.field private mStartValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lf1/t;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNameExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypeChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mTargetTypeExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mTargetTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_18

    .line 7
    sput-object v0, Lf1/n;->DEFAULT_MATCH_ORDER:[I

    .line 9
    new-instance v0, Lf1/n$a;

    .line 11
    invoke-direct {v0}, Lf1/n$a;-><init>()V

    .line 14
    sput-object v0, Lf1/n;->STRAIGHT_PATH_MOTION:Lf1/j;

    .line 16
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 18
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 21
    sput-object v0, Lf1/n;->sRunningAnimators:Ljava/lang/ThreadLocal;

    .line 23
    return-void

    .line 24
    nop

    .line 25
    :array_18
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf1/n;->mName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lf1/n;->mStartDelay:J

    .line 4
    iput-wide v0, p0, Lf1/n;->mDuration:J

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lf1/n;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lf1/n;->mTargets:Ljava/util/ArrayList;

    .line 8
    iput-object v0, p0, Lf1/n;->mTargetNames:Ljava/util/ArrayList;

    .line 9
    iput-object v0, p0, Lf1/n;->mTargetTypes:Ljava/util/ArrayList;

    .line 10
    iput-object v0, p0, Lf1/n;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 11
    iput-object v0, p0, Lf1/n;->mTargetExcludes:Ljava/util/ArrayList;

    .line 12
    iput-object v0, p0, Lf1/n;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 13
    iput-object v0, p0, Lf1/n;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 14
    iput-object v0, p0, Lf1/n;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 15
    iput-object v0, p0, Lf1/n;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 16
    iput-object v0, p0, Lf1/n;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 17
    new-instance v1, Lf1/u;

    invoke-direct {v1}, Lf1/u;-><init>()V

    iput-object v1, p0, Lf1/n;->mStartValues:Lf1/u;

    .line 18
    new-instance v1, Lf1/u;

    invoke-direct {v1}, Lf1/u;-><init>()V

    iput-object v1, p0, Lf1/n;->mEndValues:Lf1/u;

    .line 19
    iput-object v0, p0, Lf1/n;->mParent:Lf1/r;

    .line 20
    sget-object v1, Lf1/n;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Lf1/n;->mMatchOrder:[I

    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lf1/n;->mCanRemoveViews:Z

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lf1/n;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 23
    iput v1, p0, Lf1/n;->mNumInstances:I

    .line 24
    iput-boolean v1, p0, Lf1/n;->mPaused:Z

    .line 25
    iput-boolean v1, p0, Lf1/n;->mEnded:Z

    .line 26
    iput-object v0, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf1/n;->mAnimators:Ljava/util/ArrayList;

    .line 28
    sget-object v0, Lf1/n;->STRAIGHT_PATH_MOTION:Lf1/j;

    iput-object v0, p0, Lf1/n;->mPathMotion:Lf1/j;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf1/n;->mName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 31
    iput-wide v0, p0, Lf1/n;->mStartDelay:J

    .line 32
    iput-wide v0, p0, Lf1/n;->mDuration:J

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lf1/n;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lf1/n;->mTargets:Ljava/util/ArrayList;

    .line 36
    iput-object v0, p0, Lf1/n;->mTargetNames:Ljava/util/ArrayList;

    .line 37
    iput-object v0, p0, Lf1/n;->mTargetTypes:Ljava/util/ArrayList;

    .line 38
    iput-object v0, p0, Lf1/n;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 39
    iput-object v0, p0, Lf1/n;->mTargetExcludes:Ljava/util/ArrayList;

    .line 40
    iput-object v0, p0, Lf1/n;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 41
    iput-object v0, p0, Lf1/n;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 42
    iput-object v0, p0, Lf1/n;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 43
    iput-object v0, p0, Lf1/n;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 44
    iput-object v0, p0, Lf1/n;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 45
    new-instance v1, Lf1/u;

    invoke-direct {v1}, Lf1/u;-><init>()V

    iput-object v1, p0, Lf1/n;->mStartValues:Lf1/u;

    .line 46
    new-instance v1, Lf1/u;

    invoke-direct {v1}, Lf1/u;-><init>()V

    iput-object v1, p0, Lf1/n;->mEndValues:Lf1/u;

    .line 47
    iput-object v0, p0, Lf1/n;->mParent:Lf1/r;

    .line 48
    sget-object v1, Lf1/n;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Lf1/n;->mMatchOrder:[I

    const/4 v1, 0x0

    .line 49
    iput-boolean v1, p0, Lf1/n;->mCanRemoveViews:Z

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lf1/n;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 51
    iput v1, p0, Lf1/n;->mNumInstances:I

    .line 52
    iput-boolean v1, p0, Lf1/n;->mPaused:Z

    .line 53
    iput-boolean v1, p0, Lf1/n;->mEnded:Z

    .line 54
    iput-object v0, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf1/n;->mAnimators:Ljava/util/ArrayList;

    .line 56
    sget-object v0, Lf1/n;->STRAIGHT_PATH_MOTION:Lf1/j;

    iput-object v0, p0, Lf1/n;->mPathMotion:Lf1/j;

    .line 57
    sget-object v0, Lf1/m;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 58
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v2, "duration"

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 59
    invoke-static {v0, p2, v2, v3, v4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-ltz v7, :cond_81

    .line 60
    invoke-virtual {p0, v2, v3}, Lf1/n;->setDuration(J)Lf1/n;

    :cond_81
    const/4 v2, 0x2

    const-string v3, "startDelay"

    .line 61
    invoke-static {v0, p2, v3, v2, v4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v2, v5

    if-lez v4, :cond_90

    .line 62
    invoke-virtual {p0, v2, v3}, Lf1/n;->setStartDelay(J)Lf1/n;

    :cond_90
    const-string v2, "interpolator"

    .line 63
    invoke-static {v0, p2, v2, v1, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    if-lez v1, :cond_9f

    .line 64
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf1/n;->setInterpolator(Landroid/animation/TimeInterpolator;)Lf1/n;

    :cond_9f
    const/4 p1, 0x3

    const-string v1, "matchOrder"

    .line 65
    invoke-static {v0, p2, v1, p1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_af

    .line 66
    invoke-static {p1}, Lf1/n;->parseMatchOrder(Ljava/lang/String;)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lf1/n;->setMatchOrder([I)V

    .line 67
    :cond_af
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private addUnmatched(Landroidx/collection/a;Landroidx/collection/a;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/a<",
            "Landroid/view/View;",
            "Lf1/t;",
            ">;",
            "Landroidx/collection/a<",
            "Landroid/view/View;",
            "Lf1/t;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_2
    invoke-virtual {p1}, Landroidx/collection/f;->size()I

    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ge v1, v2, :cond_24

    .line 10
    invoke-virtual {p1, v1}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Lf1/t;

    .line 16
    iget-object v4, v2, Lf1/t;->b:Landroid/view/View;

    .line 18
    invoke-virtual {p0, v4}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_21

    .line 24
    iget-object v4, p0, Lf1/n;->mStartValuesList:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v2, p0, Lf1/n;->mEndValuesList:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_21
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_2

    .line 37
    :cond_24
    :goto_24
    invoke-virtual {p2}, Landroidx/collection/f;->size()I

    .line 40
    move-result p1

    .line 41
    if-ge v0, p1, :cond_45

    .line 43
    invoke-virtual {p2, v0}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lf1/t;

    .line 49
    iget-object v1, p1, Lf1/t;->b:Landroid/view/View;

    .line 51
    invoke-virtual {p0, v1}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_42

    .line 57
    iget-object v1, p0, Lf1/n;->mEndValuesList:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object p1, p0, Lf1/n;->mStartValuesList:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_42
    add-int/lit8 v0, v0, 0x1

    .line 69
    goto :goto_24

    .line 70
    :cond_45
    return-void
.end method

.method private static addViewValues(Lf1/u;Landroid/view/View;Lf1/t;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lf1/u;->a:Landroidx/collection/a;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 9
    move-result p2

    .line 10
    const/4 v0, 0x0

    .line 11
    if-ltz p2, :cond_1f

    .line 13
    iget-object v1, p0, Lf1/u;->b:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 18
    move-result v1

    .line 19
    if-ltz v1, :cond_1a

    .line 21
    iget-object v1, p0, Lf1/u;->b:Landroid/util/SparseArray;

    .line 23
    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    goto :goto_1f

    .line 27
    :cond_1a
    iget-object v1, p0, Lf1/u;->b:Landroid/util/SparseArray;

    .line 29
    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    :cond_1f
    :goto_1f
    sget-object p2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 34
    invoke-static {p1}, Lm0/g0$i;->k(Landroid/view/View;)Ljava/lang/String;

    .line 37
    move-result-object p2

    .line 38
    if-eqz p2, :cond_3a

    .line 40
    iget-object v1, p0, Lf1/u;->d:Landroidx/collection/a;

    .line 42
    invoke-virtual {v1, p2}, Landroidx/collection/f;->containsKey(Ljava/lang/Object;)Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_35

    .line 48
    iget-object v1, p0, Lf1/u;->d:Landroidx/collection/a;

    .line 50
    invoke-virtual {v1, p2, v0}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    goto :goto_3a

    .line 54
    :cond_35
    iget-object v1, p0, Lf1/u;->d:Landroidx/collection/a;

    .line 56
    invoke-virtual {v1, p2, p1}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_3a
    :goto_3a
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 62
    move-result-object p2

    .line 63
    instance-of p2, p2, Landroid/widget/ListView;

    .line 65
    if-eqz p2, :cond_8a

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 70
    move-result-object p2

    .line 71
    check-cast p2, Landroid/widget/ListView;

    .line 73
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v1}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_8a

    .line 83
    invoke-virtual {p2, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    .line 86
    move-result v1

    .line 87
    invoke-virtual {p2, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    .line 90
    move-result-wide v1

    .line 91
    iget-object p2, p0, Lf1/u;->c:Landroidx/collection/d;

    .line 93
    iget-boolean v3, p2, Landroidx/collection/d;->a:Z

    .line 95
    if-eqz v3, :cond_63

    .line 97
    invoke-virtual {p2}, Landroidx/collection/d;->c()V

    .line 100
    :cond_63
    iget-object v3, p2, Landroidx/collection/d;->b:[J

    .line 102
    iget p2, p2, Landroidx/collection/d;->d:I

    .line 104
    invoke-static {v3, p2, v1, v2}, La/b;->i([JIJ)I

    .line 107
    move-result p2

    .line 108
    if-ltz p2, :cond_81

    .line 110
    iget-object p1, p0, Lf1/u;->c:Landroidx/collection/d;

    .line 112
    invoke-virtual {p1, v1, v2, v0}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Landroid/view/View;

    .line 118
    if-eqz p1, :cond_8a

    .line 120
    const/4 p2, 0x0

    .line 121
    invoke-static {p1, p2}, Lm0/g0$d;->r(Landroid/view/View;Z)V

    .line 124
    iget-object p0, p0, Lf1/u;->c:Landroidx/collection/d;

    .line 126
    invoke-virtual {p0, v1, v2, v0}, Landroidx/collection/d;->f(JLjava/lang/Object;)V

    .line 129
    goto :goto_8a

    .line 130
    :cond_81
    const/4 p2, 0x1

    .line 131
    invoke-static {p1, p2}, Lm0/g0$d;->r(Landroid/view/View;Z)V

    .line 134
    iget-object p0, p0, Lf1/u;->c:Landroidx/collection/d;

    .line 136
    invoke-virtual {p0, v1, v2, p1}, Landroidx/collection/d;->f(JLjava/lang/Object;)V

    .line 139
    :cond_8a
    :goto_8a
    return-void
.end method

.method private static alreadyContains([II)Z
    .registers 6

    .line 1
    aget v0, p0, p1

    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_4
    if-ge v2, p1, :cond_f

    .line 7
    aget v3, p0, v2

    .line 9
    if-ne v3, v0, :cond_c

    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_c
    add-int/lit8 v2, v2, 0x1

    .line 15
    goto :goto_4

    .line 16
    :cond_f
    return v1
.end method

.method private captureHierarchy(Landroid/view/View;Z)V
    .registers 8

    .line 1
    if-nez p1, :cond_3

    .line 3
    return-void

    .line 4
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lf1/n;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 10
    if-eqz v1, :cond_16

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_16

    .line 22
    return-void

    .line 23
    :cond_16
    iget-object v1, p0, Lf1/n;->mTargetExcludes:Ljava/util/ArrayList;

    .line 25
    if-eqz v1, :cond_21

    .line 27
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_21

    .line 33
    return-void

    .line 34
    :cond_21
    iget-object v1, p0, Lf1/n;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 36
    const/4 v2, 0x0

    .line 37
    if-eqz v1, :cond_3f

    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 42
    move-result v1

    .line 43
    move v3, v2

    .line 44
    :goto_2b
    if-ge v3, v1, :cond_3f

    .line 46
    iget-object v4, p0, Lf1/n;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Ljava/lang/Class;

    .line 54
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 57
    move-result v4

    .line 58
    if-eqz v4, :cond_3c

    .line 60
    return-void

    .line 61
    :cond_3c
    add-int/lit8 v3, v3, 0x1

    .line 63
    goto :goto_2b

    .line 64
    :cond_3f
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 67
    move-result-object v1

    .line 68
    instance-of v1, v1, Landroid/view/ViewGroup;

    .line 70
    if-eqz v1, :cond_6a

    .line 72
    new-instance v1, Lf1/t;

    .line 74
    invoke-direct {v1, p1}, Lf1/t;-><init>(Landroid/view/View;)V

    .line 77
    if-eqz p2, :cond_52

    .line 79
    invoke-virtual {p0, v1}, Lf1/n;->captureStartValues(Lf1/t;)V

    .line 82
    goto :goto_55

    .line 83
    :cond_52
    invoke-virtual {p0, v1}, Lf1/n;->captureEndValues(Lf1/t;)V

    .line 86
    :goto_55
    iget-object v3, v1, Lf1/t;->c:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {p0, v1}, Lf1/n;->capturePropagationValues(Lf1/t;)V

    .line 94
    if-eqz p2, :cond_65

    .line 96
    iget-object v3, p0, Lf1/n;->mStartValues:Lf1/u;

    .line 98
    invoke-static {v3, p1, v1}, Lf1/n;->addViewValues(Lf1/u;Landroid/view/View;Lf1/t;)V

    .line 101
    goto :goto_6a

    .line 102
    :cond_65
    iget-object v3, p0, Lf1/n;->mEndValues:Lf1/u;

    .line 104
    invoke-static {v3, p1, v1}, Lf1/n;->addViewValues(Lf1/u;Landroid/view/View;Lf1/t;)V

    .line 107
    :cond_6a
    :goto_6a
    instance-of v1, p1, Landroid/view/ViewGroup;

    .line 109
    if-eqz v1, :cond_b7

    .line 111
    iget-object v1, p0, Lf1/n;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 113
    if-eqz v1, :cond_7d

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_7d

    .line 125
    return-void

    .line 126
    :cond_7d
    iget-object v0, p0, Lf1/n;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 128
    if-eqz v0, :cond_88

    .line 130
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_88

    .line 136
    return-void

    .line 137
    :cond_88
    iget-object v0, p0, Lf1/n;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 139
    if-eqz v0, :cond_a5

    .line 141
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 144
    move-result v0

    .line 145
    move v1, v2

    .line 146
    :goto_91
    if-ge v1, v0, :cond_a5

    .line 148
    iget-object v3, p0, Lf1/n;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 150
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 153
    move-result-object v3

    .line 154
    check-cast v3, Ljava/lang/Class;

    .line 156
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 159
    move-result v3

    .line 160
    if-eqz v3, :cond_a2

    .line 162
    return-void

    .line 163
    :cond_a2
    add-int/lit8 v1, v1, 0x1

    .line 165
    goto :goto_91

    .line 166
    :cond_a5
    check-cast p1, Landroid/view/ViewGroup;

    .line 168
    :goto_a7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 171
    move-result v0

    .line 172
    if-ge v2, v0, :cond_b7

    .line 174
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 177
    move-result-object v0

    .line 178
    invoke-direct {p0, v0, p2}, Lf1/n;->captureHierarchy(Landroid/view/View;Z)V

    .line 181
    add-int/lit8 v2, v2, 0x1

    .line 183
    goto :goto_a7

    .line 184
    :cond_b7
    return-void
.end method

.method private excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;IZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    if-lez p2, :cond_15

    .line 3
    if-eqz p3, :cond_d

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p2

    .line 9
    invoke-static {p1, p2}, Lf1/n$e;->a(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 12
    move-result-object p1

    .line 13
    goto :goto_15

    .line 14
    :cond_d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object p2

    .line 18
    invoke-static {p1, p2}, Lf1/n$e;->b(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 21
    move-result-object p1

    .line 22
    :cond_15
    :goto_15
    return-object p1
.end method

.method private static excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;Z)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_d

    .line 3
    if-eqz p2, :cond_9

    .line 5
    invoke-static {p0, p1}, Lf1/n$e;->a(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 8
    move-result-object p0

    .line 9
    goto :goto_d

    .line 10
    :cond_9
    invoke-static {p0, p1}, Lf1/n$e;->b(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 13
    move-result-object p0

    .line 14
    :cond_d
    :goto_d
    return-object p0
.end method

.method private excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_d

    .line 3
    if-eqz p3, :cond_9

    .line 5
    invoke-static {p1, p2}, Lf1/n$e;->a(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 8
    move-result-object p1

    .line 9
    goto :goto_d

    .line 10
    :cond_9
    invoke-static {p1, p2}, Lf1/n$e;->b(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 13
    move-result-object p1

    .line 14
    :cond_d
    :goto_d
    return-object p1
.end method

.method private excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_d

    .line 3
    if-eqz p3, :cond_9

    .line 5
    invoke-static {p1, p2}, Lf1/n$e;->a(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 8
    move-result-object p1

    .line 9
    goto :goto_d

    .line 10
    :cond_9
    invoke-static {p1, p2}, Lf1/n$e;->b(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 13
    move-result-object p1

    .line 14
    :cond_d
    :goto_d
    return-object p1
.end method

.method private static getRunningAnimators()Landroidx/collection/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/a<",
            "Landroid/animation/Animator;",
            "Lf1/n$d;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lf1/n;->sRunningAnimators:Ljava/lang/ThreadLocal;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/collection/a;

    .line 9
    if-nez v0, :cond_14

    .line 11
    new-instance v0, Landroidx/collection/a;

    .line 13
    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    .line 16
    sget-object v1, Lf1/n;->sRunningAnimators:Ljava/lang/ThreadLocal;

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 21
    :cond_14
    return-object v0
.end method

.method private static isValidMatch(I)Z
    .registers 3

    const/4 v0, 0x1

    if-lt p0, v0, :cond_7

    const/4 v1, 0x4

    if-gt p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static isValueChanged(Lf1/t;Lf1/t;Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object p0, p0, Lf1/t;->a:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    iget-object p1, p1, Lf1/t;->a:Ljava/util/HashMap;

    .line 9
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x1

    .line 14
    if-nez p0, :cond_13

    .line 16
    if-nez p1, :cond_13

    .line 18
    const/4 p2, 0x0

    .line 19
    goto :goto_1d

    .line 20
    :cond_13
    if-eqz p0, :cond_1d

    .line 22
    if-nez p1, :cond_18

    .line 24
    goto :goto_1d

    .line 25
    :cond_18
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p0

    .line 29
    xor-int/2addr p2, p0

    .line 30
    :cond_1d
    :goto_1d
    return p2
.end method

.method private matchIds(Landroidx/collection/a;Landroidx/collection/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/a<",
            "Landroid/view/View;",
            "Lf1/t;",
            ">;",
            "Landroidx/collection/a<",
            "Landroid/view/View;",
            "Lf1/t;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    if-ge v1, v0, :cond_4a

    .line 8
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroid/view/View;

    .line 14
    if-eqz v2, :cond_47

    .line 16
    invoke-virtual {p0, v2}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_47

    .line 22
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 25
    move-result v3

    .line 26
    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroid/view/View;

    .line 32
    if-eqz v3, :cond_47

    .line 34
    invoke-virtual {p0, v3}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_47

    .line 40
    invoke-virtual {p1, v2}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lf1/t;

    .line 46
    invoke-virtual {p2, v3}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Lf1/t;

    .line 52
    if-eqz v4, :cond_47

    .line 54
    if-eqz v5, :cond_47

    .line 56
    iget-object v6, p0, Lf1/n;->mStartValuesList:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v4, p0, Lf1/n;->mEndValuesList:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p1, v2}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {p2, v3}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_47
    add-int/lit8 v1, v1, 0x1

    .line 74
    goto :goto_5

    .line 75
    :cond_4a
    return-void
.end method

.method private matchInstances(Landroidx/collection/a;Landroidx/collection/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/a<",
            "Landroid/view/View;",
            "Lf1/t;",
            ">;",
            "Landroidx/collection/a<",
            "Landroid/view/View;",
            "Lf1/t;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/collection/f;->size()I

    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 7
    :goto_6
    if-ltz v0, :cond_39

    .line 9
    invoke-virtual {p1, v0}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/view/View;

    .line 15
    if-eqz v1, :cond_36

    .line 17
    invoke-virtual {p0, v1}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_36

    .line 23
    invoke-virtual {p2, v1}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lf1/t;

    .line 29
    if-eqz v1, :cond_36

    .line 31
    iget-object v2, v1, Lf1/t;->b:Landroid/view/View;

    .line 33
    invoke-virtual {p0, v2}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_36

    .line 39
    invoke-virtual {p1, v0}, Landroidx/collection/f;->removeAt(I)Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lf1/t;

    .line 45
    iget-object v3, p0, Lf1/n;->mStartValuesList:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v2, p0, Lf1/n;->mEndValuesList:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_36
    add-int/lit8 v0, v0, -0x1

    .line 57
    goto :goto_6

    .line 58
    :cond_39
    return-void
.end method

.method private matchItemIds(Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/d;Landroidx/collection/d;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/a<",
            "Landroid/view/View;",
            "Lf1/t;",
            ">;",
            "Landroidx/collection/a<",
            "Landroid/view/View;",
            "Lf1/t;",
            ">;",
            "Landroidx/collection/d<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/d<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Landroidx/collection/d;->h()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    if-ge v1, v0, :cond_4b

    .line 8
    invoke-virtual {p3, v1}, Landroidx/collection/d;->i(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroid/view/View;

    .line 14
    if-eqz v2, :cond_48

    .line 16
    invoke-virtual {p0, v2}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_48

    .line 22
    invoke-virtual {p3, v1}, Landroidx/collection/d;->e(I)J

    .line 25
    move-result-wide v3

    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-virtual {p4, v3, v4, v5}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Landroid/view/View;

    .line 33
    if-eqz v3, :cond_48

    .line 35
    invoke-virtual {p0, v3}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_48

    .line 41
    invoke-virtual {p1, v2}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lf1/t;

    .line 47
    invoke-virtual {p2, v3}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Lf1/t;

    .line 53
    if-eqz v4, :cond_48

    .line 55
    if-eqz v5, :cond_48

    .line 57
    iget-object v6, p0, Lf1/n;->mStartValuesList:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v4, p0, Lf1/n;->mEndValuesList:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {p1, v2}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p2, v3}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_48
    add-int/lit8 v1, v1, 0x1

    .line 75
    goto :goto_5

    .line 76
    :cond_4b
    return-void
.end method

.method private matchNames(Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/a;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/a<",
            "Landroid/view/View;",
            "Lf1/t;",
            ">;",
            "Landroidx/collection/a<",
            "Landroid/view/View;",
            "Lf1/t;",
            ">;",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Landroidx/collection/f;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_5
    if-ge v1, v0, :cond_4a

    .line 8
    invoke-virtual {p3, v1}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Landroid/view/View;

    .line 14
    if-eqz v2, :cond_47

    .line 16
    invoke-virtual {p0, v2}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_47

    .line 22
    invoke-virtual {p3, v1}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {p4, v3}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroid/view/View;

    .line 32
    if-eqz v3, :cond_47

    .line 34
    invoke-virtual {p0, v3}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_47

    .line 40
    invoke-virtual {p1, v2}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lf1/t;

    .line 46
    invoke-virtual {p2, v3}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Lf1/t;

    .line 52
    if-eqz v4, :cond_47

    .line 54
    if-eqz v5, :cond_47

    .line 56
    iget-object v6, p0, Lf1/n;->mStartValuesList:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v4, p0, Lf1/n;->mEndValuesList:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p1, v2}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {p2, v3}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_47
    add-int/lit8 v1, v1, 0x1

    .line 74
    goto :goto_5

    .line 75
    :cond_4a
    return-void
.end method

.method private matchStartAndEnd(Lf1/u;Lf1/u;)V
    .registers 8

    .line 1
    new-instance v0, Landroidx/collection/a;

    .line 3
    iget-object v1, p1, Lf1/u;->a:Landroidx/collection/a;

    .line 5
    invoke-direct {v0, v1}, Landroidx/collection/a;-><init>(Landroidx/collection/f;)V

    .line 8
    new-instance v1, Landroidx/collection/a;

    .line 10
    iget-object v2, p2, Lf1/u;->a:Landroidx/collection/a;

    .line 12
    invoke-direct {v1, v2}, Landroidx/collection/a;-><init>(Landroidx/collection/f;)V

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_f
    iget-object v3, p0, Lf1/n;->mMatchOrder:[I

    .line 18
    array-length v4, v3

    .line 19
    if-ge v2, v4, :cond_41

    .line 21
    aget v3, v3, v2

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eq v3, v4, :cond_3b

    .line 26
    const/4 v4, 0x2

    .line 27
    if-eq v3, v4, :cond_33

    .line 29
    const/4 v4, 0x3

    .line 30
    if-eq v3, v4, :cond_2b

    .line 32
    const/4 v4, 0x4

    .line 33
    if-eq v3, v4, :cond_23

    .line 35
    goto :goto_3e

    .line 36
    :cond_23
    iget-object v3, p1, Lf1/u;->c:Landroidx/collection/d;

    .line 38
    iget-object v4, p2, Lf1/u;->c:Landroidx/collection/d;

    .line 40
    invoke-direct {p0, v0, v1, v3, v4}, Lf1/n;->matchItemIds(Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/d;Landroidx/collection/d;)V

    .line 43
    goto :goto_3e

    .line 44
    :cond_2b
    iget-object v3, p1, Lf1/u;->b:Landroid/util/SparseArray;

    .line 46
    iget-object v4, p2, Lf1/u;->b:Landroid/util/SparseArray;

    .line 48
    invoke-direct {p0, v0, v1, v3, v4}, Lf1/n;->matchIds(Landroidx/collection/a;Landroidx/collection/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 51
    goto :goto_3e

    .line 52
    :cond_33
    iget-object v3, p1, Lf1/u;->d:Landroidx/collection/a;

    .line 54
    iget-object v4, p2, Lf1/u;->d:Landroidx/collection/a;

    .line 56
    invoke-direct {p0, v0, v1, v3, v4}, Lf1/n;->matchNames(Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/a;)V

    .line 59
    goto :goto_3e

    .line 60
    :cond_3b
    invoke-direct {p0, v0, v1}, Lf1/n;->matchInstances(Landroidx/collection/a;Landroidx/collection/a;)V

    .line 63
    :goto_3e
    add-int/lit8 v2, v2, 0x1

    .line 65
    goto :goto_f

    .line 66
    :cond_41
    invoke-direct {p0, v0, v1}, Lf1/n;->addUnmatched(Landroidx/collection/a;Landroidx/collection/a;)V

    .line 69
    return-void
.end method

.method private static parseMatchOrder(Ljava/lang/String;)[I
    .registers 7

    .line 1
    new-instance v0, Ljava/util/StringTokenizer;

    .line 3
    const-string v1, ","

    .line 5
    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    .line 11
    move-result p0

    .line 12
    new-array p0, p0, [I

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_f
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_6d

    .line 22
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    const-string v4, "id"

    .line 32
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 35
    move-result v4

    .line 36
    const/4 v5, 0x1

    .line 37
    if-eqz v4, :cond_2a

    .line 39
    const/4 v3, 0x3

    .line 40
    aput v3, p0, v2

    .line 42
    goto :goto_5d

    .line 43
    :cond_2a
    const-string v4, "instance"

    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_35

    .line 51
    aput v5, p0, v2

    .line 53
    goto :goto_5d

    .line 54
    :cond_35
    const-string v4, "name"

    .line 56
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_41

    .line 62
    const/4 v3, 0x2

    .line 63
    aput v3, p0, v2

    .line 65
    goto :goto_5d

    .line 66
    :cond_41
    const-string v4, "itemId"

    .line 68
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_4d

    .line 74
    const/4 v3, 0x4

    .line 75
    aput v3, p0, v2

    .line 77
    goto :goto_5d

    .line 78
    :cond_4d
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_5f

    .line 84
    array-length v3, p0

    .line 85
    sub-int/2addr v3, v5

    .line 86
    new-array v3, v3, [I

    .line 88
    invoke-static {p0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    add-int/lit8 v2, v2, -0x1

    .line 93
    move-object p0, v3

    .line 94
    :goto_5d
    add-int/2addr v2, v5

    .line 95
    goto :goto_f

    .line 96
    :cond_5f
    new-instance p0, Landroid/view/InflateException;

    .line 98
    const-string v0, "Unknown match type in matchOrder: \'"

    .line 100
    const-string v1, "\'"

    .line 102
    invoke-static {v0, v3, v1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 106
    invoke-direct {p0, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 109
    throw p0

    .line 110
    :cond_6d
    return-object p0
.end method

.method private runAnimator(Landroid/animation/Animator;Landroidx/collection/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroidx/collection/a<",
            "Landroid/animation/Animator;",
            "Lf1/n$d;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_d

    .line 3
    new-instance v0, Lf1/n$b;

    .line 5
    invoke-direct {v0, p0, p2}, Lf1/n$b;-><init>(Lf1/n;Landroidx/collection/a;)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 11
    invoke-virtual {p0, p1}, Lf1/n;->animate(Landroid/animation/Animator;)V

    .line 14
    :cond_d
    return-void
.end method


# virtual methods
.method public addListener(Lf1/n$g;)Lf1/n;
    .registers 3

    .line 1
    iget-object v0, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    .line 3
    if-nez v0, :cond_b

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    .line 12
    :cond_b
    iget-object v0, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-object p0
.end method

.method public addTarget(I)Lf1/n;
    .registers 3

    if-eqz p1, :cond_b

    .line 2
    iget-object v0, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Lf1/n;
    .registers 3

    .line 1
    iget-object v0, p0, Lf1/n;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTarget(Ljava/lang/Class;)Lf1/n;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lf1/n;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lf1/n;->mTargetTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf1/n;->mTargetTypes:Ljava/util/ArrayList;

    .line 8
    :cond_b
    iget-object v0, p0, Lf1/n;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTarget(Ljava/lang/String;)Lf1/n;
    .registers 3

    .line 3
    iget-object v0, p0, Lf1/n;->mTargetNames:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf1/n;->mTargetNames:Ljava/util/ArrayList;

    .line 5
    :cond_b
    iget-object v0, p0, Lf1/n;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public animate(Landroid/animation/Animator;)V
    .registers 6

    .line 1
    if-nez p1, :cond_6

    .line 3
    invoke-virtual {p0}, Lf1/n;->end()V

    .line 6
    goto :goto_43

    .line 7
    :cond_6
    invoke-virtual {p0}, Lf1/n;->getDuration()J

    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x0

    .line 13
    cmp-long v0, v0, v2

    .line 15
    if-ltz v0, :cond_17

    .line 17
    invoke-virtual {p0}, Lf1/n;->getDuration()J

    .line 20
    move-result-wide v0

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 24
    :cond_17
    invoke-virtual {p0}, Lf1/n;->getStartDelay()J

    .line 27
    move-result-wide v0

    .line 28
    cmp-long v0, v0, v2

    .line 30
    if-ltz v0, :cond_2b

    .line 32
    invoke-virtual {p0}, Lf1/n;->getStartDelay()J

    .line 35
    move-result-wide v0

    .line 36
    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    .line 39
    move-result-wide v2

    .line 40
    add-long/2addr v2, v0

    .line 41
    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 44
    :cond_2b
    invoke-virtual {p0}, Lf1/n;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_38

    .line 50
    invoke-virtual {p0}, Lf1/n;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 57
    :cond_38
    new-instance v0, Lf1/n$c;

    .line 59
    invoke-direct {v0, p0}, Lf1/n$c;-><init>(Lf1/n;)V

    .line 62
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 65
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 68
    :goto_43
    return-void
.end method

.method public cancel()V
    .registers 5

    .line 1
    iget-object v0, p0, Lf1/n;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    :goto_8
    if-ltz v0, :cond_18

    .line 11
    iget-object v1, p0, Lf1/n;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/animation/Animator;

    .line 19
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 22
    add-int/lit8 v0, v0, -0x1

    .line 24
    goto :goto_8

    .line 25
    :cond_18
    iget-object v0, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    .line 27
    if-eqz v0, :cond_3d

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result v0

    .line 33
    if-lez v0, :cond_3d

    .line 35
    iget-object v0, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x0

    .line 48
    :goto_2f
    if-ge v2, v1, :cond_3d

    .line 50
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Lf1/n$g;

    .line 56
    invoke-interface {v3, p0}, Lf1/n$g;->onTransitionCancel(Lf1/n;)V

    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 61
    goto :goto_2f

    .line 62
    :cond_3d
    return-void
.end method

.method public abstract captureEndValues(Lf1/t;)V
.end method

.method public capturePropagationValues(Lf1/t;)V
    .registers 2

    return-void
.end method

.method public abstract captureStartValues(Lf1/t;)V
.end method

.method public captureValues(Landroid/view/ViewGroup;Z)V
    .registers 8

    .line 1
    invoke-virtual {p0, p2}, Lf1/n;->clearValues(Z)V

    .line 4
    iget-object v0, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-gtz v0, :cond_14

    .line 13
    iget-object v0, p0, Lf1/n;->mTargets:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result v0

    .line 19
    if-lez v0, :cond_29

    .line 21
    :cond_14
    iget-object v0, p0, Lf1/n;->mTargetNames:Ljava/util/ArrayList;

    .line 23
    if-eqz v0, :cond_1e

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_29

    .line 31
    :cond_1e
    iget-object v0, p0, Lf1/n;->mTargetTypes:Ljava/util/ArrayList;

    .line 33
    if-eqz v0, :cond_2e

    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_29

    .line 41
    goto :goto_2e

    .line 42
    :cond_29
    invoke-direct {p0, p1, p2}, Lf1/n;->captureHierarchy(Landroid/view/View;Z)V

    .line 45
    goto/16 :goto_a6

    .line 47
    :cond_2e
    :goto_2e
    move v0, v1

    .line 48
    :goto_2f
    iget-object v2, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 53
    move-result v2

    .line 54
    if-ge v0, v2, :cond_6f

    .line 56
    iget-object v2, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Ljava/lang/Integer;

    .line 64
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 67
    move-result v2

    .line 68
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object v2

    .line 72
    if-eqz v2, :cond_6c

    .line 74
    new-instance v3, Lf1/t;

    .line 76
    invoke-direct {v3, v2}, Lf1/t;-><init>(Landroid/view/View;)V

    .line 79
    if-eqz p2, :cond_54

    .line 81
    invoke-virtual {p0, v3}, Lf1/n;->captureStartValues(Lf1/t;)V

    .line 84
    goto :goto_57

    .line 85
    :cond_54
    invoke-virtual {p0, v3}, Lf1/n;->captureEndValues(Lf1/t;)V

    .line 88
    :goto_57
    iget-object v4, v3, Lf1/t;->c:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {p0, v3}, Lf1/n;->capturePropagationValues(Lf1/t;)V

    .line 96
    if-eqz p2, :cond_67

    .line 98
    iget-object v4, p0, Lf1/n;->mStartValues:Lf1/u;

    .line 100
    invoke-static {v4, v2, v3}, Lf1/n;->addViewValues(Lf1/u;Landroid/view/View;Lf1/t;)V

    .line 103
    goto :goto_6c

    .line 104
    :cond_67
    iget-object v4, p0, Lf1/n;->mEndValues:Lf1/u;

    .line 106
    invoke-static {v4, v2, v3}, Lf1/n;->addViewValues(Lf1/u;Landroid/view/View;Lf1/t;)V

    .line 109
    :cond_6c
    :goto_6c
    add-int/lit8 v0, v0, 0x1

    .line 111
    goto :goto_2f

    .line 112
    :cond_6f
    move p1, v1

    .line 113
    :goto_70
    iget-object v0, p0, Lf1/n;->mTargets:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 118
    move-result v0

    .line 119
    if-ge p1, v0, :cond_a6

    .line 121
    iget-object v0, p0, Lf1/n;->mTargets:Ljava/util/ArrayList;

    .line 123
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Landroid/view/View;

    .line 129
    new-instance v2, Lf1/t;

    .line 131
    invoke-direct {v2, v0}, Lf1/t;-><init>(Landroid/view/View;)V

    .line 134
    if-eqz p2, :cond_8b

    .line 136
    invoke-virtual {p0, v2}, Lf1/n;->captureStartValues(Lf1/t;)V

    .line 139
    goto :goto_8e

    .line 140
    :cond_8b
    invoke-virtual {p0, v2}, Lf1/n;->captureEndValues(Lf1/t;)V

    .line 143
    :goto_8e
    iget-object v3, v2, Lf1/t;->c:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {p0, v2}, Lf1/n;->capturePropagationValues(Lf1/t;)V

    .line 151
    if-eqz p2, :cond_9e

    .line 153
    iget-object v3, p0, Lf1/n;->mStartValues:Lf1/u;

    .line 155
    invoke-static {v3, v0, v2}, Lf1/n;->addViewValues(Lf1/u;Landroid/view/View;Lf1/t;)V

    .line 158
    goto :goto_a3

    .line 159
    :cond_9e
    iget-object v3, p0, Lf1/n;->mEndValues:Lf1/u;

    .line 161
    invoke-static {v3, v0, v2}, Lf1/n;->addViewValues(Lf1/u;Landroid/view/View;Lf1/t;)V

    .line 164
    :goto_a3
    add-int/lit8 p1, p1, 0x1

    .line 166
    goto :goto_70

    .line 167
    :cond_a6
    :goto_a6
    if-nez p2, :cond_ea

    .line 169
    iget-object p1, p0, Lf1/n;->mNameOverrides:Landroidx/collection/a;

    .line 171
    if-eqz p1, :cond_ea

    .line 173
    invoke-virtual {p1}, Landroidx/collection/f;->size()I

    .line 176
    move-result p1

    .line 177
    new-instance p2, Ljava/util/ArrayList;

    .line 179
    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    move v0, v1

    .line 183
    :goto_b6
    if-ge v0, p1, :cond_ce

    .line 185
    iget-object v2, p0, Lf1/n;->mNameOverrides:Landroidx/collection/a;

    .line 187
    invoke-virtual {v2, v0}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    .line 190
    move-result-object v2

    .line 191
    check-cast v2, Ljava/lang/String;

    .line 193
    iget-object v3, p0, Lf1/n;->mStartValues:Lf1/u;

    .line 195
    iget-object v3, v3, Lf1/u;->d:Landroidx/collection/a;

    .line 197
    invoke-virtual {v3, v2}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v0, v0, 0x1

    .line 206
    goto :goto_b6

    .line 207
    :cond_ce
    :goto_ce
    if-ge v1, p1, :cond_ea

    .line 209
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 212
    move-result-object v0

    .line 213
    check-cast v0, Landroid/view/View;

    .line 215
    if-eqz v0, :cond_e7

    .line 217
    iget-object v2, p0, Lf1/n;->mNameOverrides:Landroidx/collection/a;

    .line 219
    invoke-virtual {v2, v1}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    .line 222
    move-result-object v2

    .line 223
    check-cast v2, Ljava/lang/String;

    .line 225
    iget-object v3, p0, Lf1/n;->mStartValues:Lf1/u;

    .line 227
    iget-object v3, v3, Lf1/u;->d:Landroidx/collection/a;

    .line 229
    invoke-virtual {v3, v2, v0}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_e7
    add-int/lit8 v1, v1, 0x1

    .line 234
    goto :goto_ce

    .line 235
    :cond_ea
    return-void
.end method

.method public clearValues(Z)V
    .registers 2

    .line 1
    if-eqz p1, :cond_18

    .line 3
    iget-object p1, p0, Lf1/n;->mStartValues:Lf1/u;

    .line 5
    iget-object p1, p1, Lf1/u;->a:Landroidx/collection/a;

    .line 7
    invoke-virtual {p1}, Landroidx/collection/f;->clear()V

    .line 10
    iget-object p1, p0, Lf1/n;->mStartValues:Lf1/u;

    .line 12
    iget-object p1, p1, Lf1/u;->b:Landroid/util/SparseArray;

    .line 14
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 17
    iget-object p1, p0, Lf1/n;->mStartValues:Lf1/u;

    .line 19
    iget-object p1, p1, Lf1/u;->c:Landroidx/collection/d;

    .line 21
    invoke-virtual {p1}, Landroidx/collection/d;->a()V

    .line 24
    goto :goto_2d

    .line 25
    :cond_18
    iget-object p1, p0, Lf1/n;->mEndValues:Lf1/u;

    .line 27
    iget-object p1, p1, Lf1/u;->a:Landroidx/collection/a;

    .line 29
    invoke-virtual {p1}, Landroidx/collection/f;->clear()V

    .line 32
    iget-object p1, p0, Lf1/n;->mEndValues:Lf1/u;

    .line 34
    iget-object p1, p1, Lf1/u;->b:Landroid/util/SparseArray;

    .line 36
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 39
    iget-object p1, p0, Lf1/n;->mEndValues:Lf1/u;

    .line 41
    iget-object p1, p1, Lf1/u;->c:Landroidx/collection/d;

    .line 43
    invoke-virtual {p1}, Landroidx/collection/d;->a()V

    .line 46
    :goto_2d
    return-void
.end method

.method public clone()Lf1/n;
    .registers 4

    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lf1/n;->mAnimators:Ljava/util/ArrayList;

    .line 4
    new-instance v2, Lf1/u;

    invoke-direct {v2}, Lf1/u;-><init>()V

    iput-object v2, v1, Lf1/n;->mStartValues:Lf1/u;

    .line 5
    new-instance v2, Lf1/u;

    invoke-direct {v2}, Lf1/u;-><init>()V

    iput-object v2, v1, Lf1/n;->mEndValues:Lf1/u;

    .line 6
    iput-object v0, v1, Lf1/n;->mStartValuesList:Ljava/util/ArrayList;

    .line 7
    iput-object v0, v1, Lf1/n;->mEndValuesList:Ljava/util/ArrayList;
    :try_end_20
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_20} :catch_21

    return-object v1

    :catch_21
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lf1/n;->clone()Lf1/n;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lf1/t;Lf1/t;)Landroid/animation/Animator;
    .registers 4

    const/4 p1, 0x0

    return-object p1
.end method

.method public createAnimators(Landroid/view/ViewGroup;Lf1/u;Lf1/u;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lf1/u;",
            "Lf1/u;",
            "Ljava/util/ArrayList<",
            "Lf1/t;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lf1/t;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v6, p0

    .line 3
    move-object/from16 v7, p1

    .line 5
    invoke-static {}, Lf1/n;->getRunningAnimators()Landroidx/collection/a;

    .line 8
    move-result-object v8

    .line 9
    new-instance v9, Landroid/util/SparseIntArray;

    .line 11
    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 14
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v10

    .line 18
    const/4 v12, 0x0

    .line 19
    :goto_12
    const-wide v0, 0x7fffffffffffffffL

    .line 24
    if-ge v12, v10, :cond_10d

    .line 26
    move-object/from16 v13, p4

    .line 28
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lf1/t;

    .line 34
    move-object/from16 v14, p5

    .line 36
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lf1/t;

    .line 42
    if-eqz v0, :cond_34

    .line 44
    iget-object v3, v0, Lf1/t;->c:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_34

    .line 52
    const/4 v0, 0x0

    .line 53
    :cond_34
    if-eqz v1, :cond_3f

    .line 55
    iget-object v3, v1, Lf1/t;->c:Ljava/util/ArrayList;

    .line 57
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_3f

    .line 63
    const/4 v1, 0x0

    .line 64
    :cond_3f
    if-nez v0, :cond_47

    .line 66
    if-nez v1, :cond_47

    .line 68
    :cond_43
    move-object/from16 v15, p3

    .line 70
    goto/16 :goto_107

    .line 72
    :cond_47
    if-eqz v0, :cond_54

    .line 74
    if-eqz v1, :cond_54

    .line 76
    invoke-virtual {v6, v0, v1}, Lf1/n;->isTransitionRequired(Lf1/t;Lf1/t;)Z

    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_52

    .line 82
    goto :goto_54

    .line 83
    :cond_52
    const/4 v3, 0x0

    .line 84
    goto :goto_55

    .line 85
    :cond_54
    :goto_54
    const/4 v3, 0x1

    .line 86
    :goto_55
    if-eqz v3, :cond_43

    .line 88
    invoke-virtual {v6, v7, v0, v1}, Lf1/n;->createAnimator(Landroid/view/ViewGroup;Lf1/t;Lf1/t;)Landroid/animation/Animator;

    .line 91
    move-result-object v3

    .line 92
    if-eqz v3, :cond_43

    .line 94
    if-eqz v1, :cond_db

    .line 96
    iget-object v0, v1, Lf1/t;->b:Landroid/view/View;

    .line 98
    invoke-virtual/range {p0 .. p0}, Lf1/n;->getTransitionProperties()[Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    if-eqz v1, :cond_d0

    .line 104
    array-length v4, v1

    .line 105
    if-lez v4, :cond_d0

    .line 107
    new-instance v4, Lf1/t;

    .line 109
    invoke-direct {v4, v0}, Lf1/t;-><init>(Landroid/view/View;)V

    .line 112
    move-object/from16 v15, p3

    .line 114
    iget-object v5, v15, Lf1/u;->a:Landroidx/collection/a;

    .line 116
    invoke-virtual {v5, v0}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    move-result-object v5

    .line 120
    check-cast v5, Lf1/t;

    .line 122
    if-eqz v5, :cond_97

    .line 124
    const/4 v2, 0x0

    .line 125
    :goto_7c
    array-length v11, v1

    .line 126
    if-ge v2, v11, :cond_97

    .line 128
    iget-object v11, v4, Lf1/t;->a:Ljava/util/HashMap;

    .line 130
    move-object/from16 v16, v3

    .line 132
    aget-object v3, v1, v2

    .line 134
    move-object/from16 v17, v1

    .line 136
    iget-object v1, v5, Lf1/t;->a:Ljava/util/HashMap;

    .line 138
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v11, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    add-int/lit8 v2, v2, 0x1

    .line 147
    move-object/from16 v3, v16

    .line 149
    move-object/from16 v1, v17

    .line 151
    goto :goto_7c

    .line 152
    :cond_97
    move-object/from16 v16, v3

    .line 154
    invoke-virtual {v8}, Landroidx/collection/f;->size()I

    .line 157
    move-result v1

    .line 158
    const/4 v2, 0x0

    .line 159
    :goto_9e
    if-ge v2, v1, :cond_cd

    .line 161
    invoke-virtual {v8, v2}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    .line 164
    move-result-object v3

    .line 165
    check-cast v3, Landroid/animation/Animator;

    .line 167
    invoke-virtual {v8, v3}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    move-result-object v3

    .line 171
    check-cast v3, Lf1/n$d;

    .line 173
    iget-object v5, v3, Lf1/n$d;->c:Lf1/t;

    .line 175
    if-eqz v5, :cond_ca

    .line 177
    iget-object v5, v3, Lf1/n$d;->a:Landroid/view/View;

    .line 179
    if-ne v5, v0, :cond_ca

    .line 181
    iget-object v5, v3, Lf1/n$d;->b:Ljava/lang/String;

    .line 183
    invoke-virtual/range {p0 .. p0}, Lf1/n;->getName()Ljava/lang/String;

    .line 186
    move-result-object v11

    .line 187
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    move-result v5

    .line 191
    if-eqz v5, :cond_ca

    .line 193
    iget-object v3, v3, Lf1/n$d;->c:Lf1/t;

    .line 195
    invoke-virtual {v3, v4}, Lf1/t;->equals(Ljava/lang/Object;)Z

    .line 198
    move-result v3

    .line 199
    if-eqz v3, :cond_ca

    .line 201
    const/4 v2, 0x0

    .line 202
    goto :goto_d7

    .line 203
    :cond_ca
    add-int/lit8 v2, v2, 0x1

    .line 205
    goto :goto_9e

    .line 206
    :cond_cd
    move-object/from16 v2, v16

    .line 208
    goto :goto_d7

    .line 209
    :cond_d0
    move-object/from16 v15, p3

    .line 211
    move-object/from16 v16, v3

    .line 213
    move-object/from16 v2, v16

    .line 215
    const/4 v4, 0x0

    .line 216
    :goto_d7
    move-object v1, v0

    .line 217
    move-object v11, v2

    .line 218
    move-object v5, v4

    .line 219
    goto :goto_e5

    .line 220
    :cond_db
    move-object/from16 v15, p3

    .line 222
    move-object/from16 v16, v3

    .line 224
    iget-object v0, v0, Lf1/t;->b:Landroid/view/View;

    .line 226
    move-object v1, v0

    .line 227
    move-object/from16 v11, v16

    .line 229
    const/4 v5, 0x0

    .line 230
    :goto_e5
    if-eqz v11, :cond_107

    .line 232
    new-instance v4, Lf1/n$d;

    .line 234
    invoke-virtual/range {p0 .. p0}, Lf1/n;->getName()Ljava/lang/String;

    .line 237
    move-result-object v2

    .line 238
    sget-object v0, Lf1/w;->a:Lf1/b0;

    .line 240
    new-instance v3, Lf1/e0;

    .line 242
    invoke-direct {v3, v7}, Lf1/e0;-><init>(Landroid/view/View;)V

    .line 245
    move-object v0, v4

    .line 246
    move-object/from16 v16, v3

    .line 248
    move-object/from16 v3, p0

    .line 250
    move-object v7, v4

    .line 251
    move-object/from16 v4, v16

    .line 253
    invoke-direct/range {v0 .. v5}, Lf1/n$d;-><init>(Landroid/view/View;Ljava/lang/String;Lf1/n;Lf1/e0;Lf1/t;)V

    .line 256
    invoke-virtual {v8, v11, v7}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v0, v6, Lf1/n;->mAnimators:Ljava/util/ArrayList;

    .line 261
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_107
    :goto_107
    add-int/lit8 v12, v12, 0x1

    .line 266
    move-object/from16 v7, p1

    .line 268
    goto/16 :goto_12

    .line 270
    :cond_10d
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    .line 273
    move-result v2

    .line 274
    if-eqz v2, :cond_137

    .line 276
    const/4 v11, 0x0

    .line 277
    :goto_114
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    .line 280
    move-result v2

    .line 281
    if-ge v11, v2, :cond_137

    .line 283
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 286
    move-result v2

    .line 287
    iget-object v3, v6, Lf1/n;->mAnimators:Ljava/util/ArrayList;

    .line 289
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 292
    move-result-object v2

    .line 293
    check-cast v2, Landroid/animation/Animator;

    .line 295
    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 298
    move-result v3

    .line 299
    int-to-long v3, v3

    .line 300
    sub-long/2addr v3, v0

    .line 301
    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    .line 304
    move-result-wide v7

    .line 305
    add-long/2addr v7, v3

    .line 306
    invoke-virtual {v2, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 309
    add-int/lit8 v11, v11, 0x1

    .line 311
    goto :goto_114

    .line 312
    :cond_137
    return-void
.end method

.method public end()V
    .registers 7

    .line 1
    iget v0, p0, Lf1/n;->mNumInstances:I

    .line 3
    const/4 v1, 0x1

    .line 4
    sub-int/2addr v0, v1

    .line 5
    iput v0, p0, Lf1/n;->mNumInstances:I

    .line 7
    if-nez v0, :cond_6e

    .line 9
    iget-object v0, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_2e

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 17
    move-result v0

    .line 18
    if-lez v0, :cond_2e

    .line 20
    iget-object v0, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result v3

    .line 32
    move v4, v2

    .line 33
    :goto_20
    if-ge v4, v3, :cond_2e

    .line 35
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Lf1/n$g;

    .line 41
    invoke-interface {v5, p0}, Lf1/n$g;->onTransitionEnd(Lf1/n;)V

    .line 44
    add-int/lit8 v4, v4, 0x1

    .line 46
    goto :goto_20

    .line 47
    :cond_2e
    move v0, v2

    .line 48
    :goto_2f
    iget-object v3, p0, Lf1/n;->mStartValues:Lf1/u;

    .line 50
    iget-object v3, v3, Lf1/u;->c:Landroidx/collection/d;

    .line 52
    invoke-virtual {v3}, Landroidx/collection/d;->h()I

    .line 55
    move-result v3

    .line 56
    if-ge v0, v3, :cond_4d

    .line 58
    iget-object v3, p0, Lf1/n;->mStartValues:Lf1/u;

    .line 60
    iget-object v3, v3, Lf1/u;->c:Landroidx/collection/d;

    .line 62
    invoke-virtual {v3, v0}, Landroidx/collection/d;->i(I)Ljava/lang/Object;

    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Landroid/view/View;

    .line 68
    if-eqz v3, :cond_4a

    .line 70
    sget-object v4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 72
    invoke-static {v3, v2}, Lm0/g0$d;->r(Landroid/view/View;Z)V

    .line 75
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    .line 77
    goto :goto_2f

    .line 78
    :cond_4d
    move v0, v2

    .line 79
    :goto_4e
    iget-object v3, p0, Lf1/n;->mEndValues:Lf1/u;

    .line 81
    iget-object v3, v3, Lf1/u;->c:Landroidx/collection/d;

    .line 83
    invoke-virtual {v3}, Landroidx/collection/d;->h()I

    .line 86
    move-result v3

    .line 87
    if-ge v0, v3, :cond_6c

    .line 89
    iget-object v3, p0, Lf1/n;->mEndValues:Lf1/u;

    .line 91
    iget-object v3, v3, Lf1/u;->c:Landroidx/collection/d;

    .line 93
    invoke-virtual {v3, v0}, Landroidx/collection/d;->i(I)Ljava/lang/Object;

    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Landroid/view/View;

    .line 99
    if-eqz v3, :cond_69

    .line 101
    sget-object v4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 103
    invoke-static {v3, v2}, Lm0/g0$d;->r(Landroid/view/View;Z)V

    .line 106
    :cond_69
    add-int/lit8 v0, v0, 0x1

    .line 108
    goto :goto_4e

    .line 109
    :cond_6c
    iput-boolean v1, p0, Lf1/n;->mEnded:Z

    .line 111
    :cond_6e
    return-void
.end method

.method public excludeChildren(IZ)Lf1/n;
    .registers 4

    .line 2
    iget-object v0, p0, Lf1/n;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lf1/n;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lf1/n;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Lf1/n;
    .registers 4

    .line 1
    iget-object v0, p0, Lf1/n;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lf1/n;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lf1/n;->mTargetChildExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Lf1/n;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Lf1/n;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lf1/n;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lf1/n;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lf1/n;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(IZ)Lf1/n;
    .registers 4

    .line 2
    iget-object v0, p0, Lf1/n;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lf1/n;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lf1/n;->mTargetIdExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Lf1/n;
    .registers 4

    .line 1
    iget-object v0, p0, Lf1/n;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lf1/n;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lf1/n;->mTargetExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Lf1/n;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Lf1/n;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lf1/n;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lf1/n;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lf1/n;->mTargetTypeExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(Ljava/lang/String;Z)Lf1/n;
    .registers 4

    .line 3
    iget-object v0, p0, Lf1/n;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lf1/n;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lf1/n;->mTargetNameExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public forceToEnd(Landroid/view/ViewGroup;)V
    .registers 7

    .line 1
    invoke-static {}, Lf1/n;->getRunningAnimators()Landroidx/collection/a;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/collection/f;->size()I

    .line 8
    move-result v1

    .line 9
    if-eqz p1, :cond_4a

    .line 11
    if-nez v1, :cond_d

    .line 13
    goto :goto_4a

    .line 14
    :cond_d
    sget-object v2, Lf1/w;->a:Lf1/b0;

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    .line 19
    move-result-object p1

    .line 20
    new-instance v2, Landroidx/collection/a;

    .line 22
    invoke-direct {v2, v0}, Landroidx/collection/a;-><init>(Landroidx/collection/f;)V

    .line 25
    invoke-virtual {v0}, Landroidx/collection/f;->clear()V

    .line 28
    const/4 v0, 0x1

    .line 29
    sub-int/2addr v1, v0

    .line 30
    :goto_1d
    if-ltz v1, :cond_4a

    .line 32
    invoke-virtual {v2, v1}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lf1/n$d;

    .line 38
    iget-object v4, v3, Lf1/n$d;->a:Landroid/view/View;

    .line 40
    if-eqz v4, :cond_47

    .line 42
    iget-object v3, v3, Lf1/n$d;->d:Lf1/f0;

    .line 44
    instance-of v4, v3, Lf1/e0;

    .line 46
    if-eqz v4, :cond_3b

    .line 48
    check-cast v3, Lf1/e0;

    .line 50
    iget-object v3, v3, Lf1/e0;->a:Landroid/view/WindowId;

    .line 52
    invoke-virtual {v3, p1}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_3b

    .line 58
    move v3, v0

    .line 59
    goto :goto_3c

    .line 60
    :cond_3b
    const/4 v3, 0x0

    .line 61
    :goto_3c
    if-eqz v3, :cond_47

    .line 63
    invoke-virtual {v2, v1}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Landroid/animation/Animator;

    .line 69
    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    .line 72
    :cond_47
    add-int/lit8 v1, v1, -0x1

    .line 74
    goto :goto_1d

    .line 75
    :cond_4a
    :goto_4a
    return-void
.end method

.method public getDuration()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lf1/n;->mDuration:J

    .line 3
    return-wide v0
.end method

.method public getEpicenter()Landroid/graphics/Rect;
    .registers 2

    .line 1
    iget-object v0, p0, Lf1/n;->mEpicenterCallback:Lf1/n$f;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_6
    invoke-virtual {v0}, Lf1/n$f;->a()Landroid/graphics/Rect;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getEpicenterCallback()Lf1/n$f;
    .registers 2

    .line 1
    iget-object v0, p0, Lf1/n;->mEpicenterCallback:Lf1/n$f;

    .line 3
    return-object v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .line 1
    iget-object v0, p0, Lf1/n;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 3
    return-object v0
.end method

.method public getMatchedTransitionValues(Landroid/view/View;Z)Lf1/t;
    .registers 9

    .line 1
    iget-object v0, p0, Lf1/n;->mParent:Lf1/r;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1, p2}, Lf1/n;->getMatchedTransitionValues(Landroid/view/View;Z)Lf1/t;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_9
    if-eqz p2, :cond_e

    .line 12
    iget-object v0, p0, Lf1/n;->mStartValuesList:Ljava/util/ArrayList;

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    iget-object v0, p0, Lf1/n;->mEndValuesList:Ljava/util/ArrayList;

    .line 17
    :goto_10
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_14

    .line 20
    return-object v1

    .line 21
    :cond_14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result v2

    .line 25
    const/4 v3, -0x1

    .line 26
    const/4 v4, 0x0

    .line 27
    :goto_1a
    if-ge v4, v2, :cond_2e

    .line 29
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Lf1/t;

    .line 35
    if-nez v5, :cond_25

    .line 37
    return-object v1

    .line 38
    :cond_25
    iget-object v5, v5, Lf1/t;->b:Landroid/view/View;

    .line 40
    if-ne v5, p1, :cond_2b

    .line 42
    move v3, v4

    .line 43
    goto :goto_2e

    .line 44
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    .line 46
    goto :goto_1a

    .line 47
    :cond_2e
    :goto_2e
    if-ltz v3, :cond_3e

    .line 49
    if-eqz p2, :cond_35

    .line 51
    iget-object p1, p0, Lf1/n;->mEndValuesList:Ljava/util/ArrayList;

    .line 53
    goto :goto_37

    .line 54
    :cond_35
    iget-object p1, p0, Lf1/n;->mStartValuesList:Ljava/util/ArrayList;

    .line 56
    :goto_37
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    move-object v1, p1

    .line 61
    check-cast v1, Lf1/t;

    .line 63
    :cond_3e
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lf1/n;->mName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getPathMotion()Lf1/j;
    .registers 2

    .line 1
    iget-object v0, p0, Lf1/n;->mPathMotion:Lf1/j;

    .line 3
    return-object v0
.end method

.method public getPropagation()Lf1/q;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartDelay()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lf1/n;->mStartDelay:J

    .line 3
    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getTargetNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf1/n;->mTargetNames:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getTargetTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf1/n;->mTargetTypes:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf1/n;->mTargets:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Lf1/t;
    .registers 4

    .line 1
    iget-object v0, p0, Lf1/n;->mParent:Lf1/r;

    .line 3
    if-eqz v0, :cond_9

    .line 5
    invoke-virtual {v0, p1, p2}, Lf1/n;->getTransitionValues(Landroid/view/View;Z)Lf1/t;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_9
    if-eqz p2, :cond_e

    .line 12
    iget-object p2, p0, Lf1/n;->mStartValues:Lf1/u;

    .line 14
    goto :goto_10

    .line 15
    :cond_e
    iget-object p2, p0, Lf1/n;->mEndValues:Lf1/u;

    .line 17
    :goto_10
    iget-object p2, p2, Lf1/u;->a:Landroidx/collection/a;

    .line 19
    invoke-virtual {p2, p1}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lf1/t;

    .line 25
    return-object p1
.end method

.method public isTransitionRequired(Lf1/t;Lf1/t;)Z
    .registers 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_38

    .line 4
    if-eqz p2, :cond_38

    .line 6
    invoke-virtual {p0}, Lf1/n;->getTransitionProperties()[Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_1b

    .line 12
    array-length v2, v1

    .line 13
    move v3, v0

    .line 14
    :goto_d
    if-ge v3, v2, :cond_38

    .line 16
    aget-object v4, v1, v3

    .line 18
    invoke-static {p1, p2, v4}, Lf1/n;->isValueChanged(Lf1/t;Lf1/t;Ljava/lang/String;)Z

    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_18

    .line 24
    goto :goto_37

    .line 25
    :cond_18
    add-int/lit8 v3, v3, 0x1

    .line 27
    goto :goto_d

    .line 28
    :cond_1b
    iget-object v1, p1, Lf1/t;->a:Ljava/util/HashMap;

    .line 30
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v1

    .line 38
    :cond_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_38

    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ljava/lang/String;

    .line 50
    invoke-static {p1, p2, v2}, Lf1/n;->isValueChanged(Lf1/t;Lf1/t;Ljava/lang/String;)Z

    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_25

    .line 56
    :goto_37
    const/4 v0, 0x1

    .line 57
    :cond_38
    return v0
.end method

.method public isValidTarget(Landroid/view/View;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lf1/n;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_14

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_14

    .line 20
    return v2

    .line 21
    :cond_14
    iget-object v1, p0, Lf1/n;->mTargetExcludes:Ljava/util/ArrayList;

    .line 23
    if-eqz v1, :cond_1f

    .line 25
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1f

    .line 31
    return v2

    .line 32
    :cond_1f
    iget-object v1, p0, Lf1/n;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 34
    if-eqz v1, :cond_3c

    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 39
    move-result v1

    .line 40
    move v3, v2

    .line 41
    :goto_28
    if-ge v3, v1, :cond_3c

    .line 43
    iget-object v4, p0, Lf1/n;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Ljava/lang/Class;

    .line 51
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_39

    .line 57
    return v2

    .line 58
    :cond_39
    add-int/lit8 v3, v3, 0x1

    .line 60
    goto :goto_28

    .line 61
    :cond_3c
    iget-object v1, p0, Lf1/n;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 63
    if-eqz v1, :cond_55

    .line 65
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 67
    invoke-static {p1}, Lm0/g0$i;->k(Landroid/view/View;)Ljava/lang/String;

    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_55

    .line 73
    iget-object v1, p0, Lf1/n;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 75
    invoke-static {p1}, Lm0/g0$i;->k(Landroid/view/View;)Ljava/lang/String;

    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_55

    .line 85
    return v2

    .line 86
    :cond_55
    iget-object v1, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 91
    move-result v1

    .line 92
    const/4 v3, 0x1

    .line 93
    if-nez v1, :cond_7b

    .line 95
    iget-object v1, p0, Lf1/n;->mTargets:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_7b

    .line 103
    iget-object v1, p0, Lf1/n;->mTargetTypes:Ljava/util/ArrayList;

    .line 105
    if-eqz v1, :cond_70

    .line 107
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_7b

    .line 113
    :cond_70
    iget-object v1, p0, Lf1/n;->mTargetNames:Ljava/util/ArrayList;

    .line 115
    if-eqz v1, :cond_7a

    .line 117
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_7b

    .line 123
    :cond_7a
    return v3

    .line 124
    :cond_7b
    iget-object v1, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_c1

    .line 136
    iget-object v0, p0, Lf1/n;->mTargets:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_90

    .line 144
    goto :goto_c1

    .line 145
    :cond_90
    iget-object v0, p0, Lf1/n;->mTargetNames:Ljava/util/ArrayList;

    .line 147
    if-eqz v0, :cond_a1

    .line 149
    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    .line 151
    invoke-static {p1}, Lm0/g0$i;->k(Landroid/view/View;)Ljava/lang/String;

    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_a1

    .line 161
    return v3

    .line 162
    :cond_a1
    iget-object v0, p0, Lf1/n;->mTargetTypes:Ljava/util/ArrayList;

    .line 164
    if-eqz v0, :cond_c0

    .line 166
    move v0, v2

    .line 167
    :goto_a6
    iget-object v1, p0, Lf1/n;->mTargetTypes:Ljava/util/ArrayList;

    .line 169
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 172
    move-result v1

    .line 173
    if-ge v0, v1, :cond_c0

    .line 175
    iget-object v1, p0, Lf1/n;->mTargetTypes:Ljava/util/ArrayList;

    .line 177
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 180
    move-result-object v1

    .line 181
    check-cast v1, Ljava/lang/Class;

    .line 183
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_bd

    .line 189
    return v3

    .line 190
    :cond_bd
    add-int/lit8 v0, v0, 0x1

    .line 192
    goto :goto_a6

    .line 193
    :cond_c0
    return v2

    .line 194
    :cond_c1
    :goto_c1
    return v3
.end method

.method public pause(Landroid/view/View;)V
    .registers 6

    .line 1
    iget-boolean p1, p0, Lf1/n;->mEnded:Z

    .line 3
    if-nez p1, :cond_43

    .line 5
    iget-object p1, p0, Lf1/n;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x1

    .line 12
    sub-int/2addr p1, v0

    .line 13
    :goto_c
    if-ltz p1, :cond_1c

    .line 15
    iget-object v1, p0, Lf1/n;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/animation/Animator;

    .line 23
    invoke-virtual {v1}, Landroid/animation/Animator;->pause()V

    .line 26
    add-int/lit8 p1, p1, -0x1

    .line 28
    goto :goto_c

    .line 29
    :cond_1c
    iget-object p1, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    .line 31
    if-eqz p1, :cond_41

    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 36
    move-result p1

    .line 37
    if-lez p1, :cond_41

    .line 39
    iget-object p1, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 50
    move-result v1

    .line 51
    const/4 v2, 0x0

    .line 52
    :goto_33
    if-ge v2, v1, :cond_41

    .line 54
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Lf1/n$g;

    .line 60
    invoke-interface {v3, p0}, Lf1/n$g;->onTransitionPause(Lf1/n;)V

    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 65
    goto :goto_33

    .line 66
    :cond_41
    iput-boolean v0, p0, Lf1/n;->mPaused:Z

    .line 68
    :cond_43
    return-void
.end method

.method public playTransition(Landroid/view/ViewGroup;)V
    .registers 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iput-object v0, p0, Lf1/n;->mStartValuesList:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iput-object v0, p0, Lf1/n;->mEndValuesList:Ljava/util/ArrayList;

    .line 15
    iget-object v0, p0, Lf1/n;->mStartValues:Lf1/u;

    .line 17
    iget-object v1, p0, Lf1/n;->mEndValues:Lf1/u;

    .line 19
    invoke-direct {p0, v0, v1}, Lf1/n;->matchStartAndEnd(Lf1/u;Lf1/u;)V

    .line 22
    invoke-static {}, Lf1/n;->getRunningAnimators()Landroidx/collection/a;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroidx/collection/f;->size()I

    .line 29
    move-result v1

    .line 30
    sget-object v2, Lf1/w;->a:Lf1/b0;

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    .line 35
    move-result-object v2

    .line 36
    const/4 v3, 0x1

    .line 37
    sub-int/2addr v1, v3

    .line 38
    :goto_25
    if-ltz v1, :cond_92

    .line 40
    invoke-virtual {v0, v1}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Landroid/animation/Animator;

    .line 46
    if-eqz v4, :cond_8f

    .line 48
    invoke-virtual {v0, v4}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Lf1/n$d;

    .line 54
    if-eqz v5, :cond_8f

    .line 56
    iget-object v6, v5, Lf1/n$d;->a:Landroid/view/View;

    .line 58
    if-eqz v6, :cond_8f

    .line 60
    iget-object v6, v5, Lf1/n$d;->d:Lf1/f0;

    .line 62
    instance-of v7, v6, Lf1/e0;

    .line 64
    const/4 v8, 0x0

    .line 65
    if-eqz v7, :cond_4e

    .line 67
    check-cast v6, Lf1/e0;

    .line 69
    iget-object v6, v6, Lf1/e0;->a:Landroid/view/WindowId;

    .line 71
    invoke-virtual {v6, v2}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_4e

    .line 77
    move v6, v3

    .line 78
    goto :goto_4f

    .line 79
    :cond_4e
    move v6, v8

    .line 80
    :goto_4f
    if-eqz v6, :cond_8f

    .line 82
    iget-object v6, v5, Lf1/n$d;->c:Lf1/t;

    .line 84
    iget-object v7, v5, Lf1/n$d;->a:Landroid/view/View;

    .line 86
    invoke-virtual {p0, v7, v3}, Lf1/n;->getTransitionValues(Landroid/view/View;Z)Lf1/t;

    .line 89
    move-result-object v9

    .line 90
    invoke-virtual {p0, v7, v3}, Lf1/n;->getMatchedTransitionValues(Landroid/view/View;Z)Lf1/t;

    .line 93
    move-result-object v10

    .line 94
    if-nez v9, :cond_6c

    .line 96
    if-nez v10, :cond_6c

    .line 98
    iget-object v10, p0, Lf1/n;->mEndValues:Lf1/u;

    .line 100
    iget-object v10, v10, Lf1/u;->a:Landroidx/collection/a;

    .line 102
    invoke-virtual {v10, v7}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    move-result-object v7

    .line 106
    move-object v10, v7

    .line 107
    check-cast v10, Lf1/t;

    .line 109
    :cond_6c
    if-nez v9, :cond_70

    .line 111
    if-eqz v10, :cond_79

    .line 113
    :cond_70
    iget-object v5, v5, Lf1/n$d;->e:Lf1/n;

    .line 115
    invoke-virtual {v5, v6, v10}, Lf1/n;->isTransitionRequired(Lf1/t;Lf1/t;)Z

    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_79

    .line 121
    move v8, v3

    .line 122
    :cond_79
    if-eqz v8, :cond_8f

    .line 124
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    .line 127
    move-result v5

    .line 128
    if-nez v5, :cond_8c

    .line 130
    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_88

    .line 136
    goto :goto_8c

    .line 137
    :cond_88
    invoke-virtual {v0, v4}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    goto :goto_8f

    .line 141
    :cond_8c
    :goto_8c
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 144
    :cond_8f
    :goto_8f
    add-int/lit8 v1, v1, -0x1

    .line 146
    goto :goto_25

    .line 147
    :cond_92
    iget-object v6, p0, Lf1/n;->mStartValues:Lf1/u;

    .line 149
    iget-object v7, p0, Lf1/n;->mEndValues:Lf1/u;

    .line 151
    iget-object v8, p0, Lf1/n;->mStartValuesList:Ljava/util/ArrayList;

    .line 153
    iget-object v9, p0, Lf1/n;->mEndValuesList:Ljava/util/ArrayList;

    .line 155
    move-object v4, p0

    .line 156
    move-object v5, p1

    .line 157
    invoke-virtual/range {v4 .. v9}, Lf1/n;->createAnimators(Landroid/view/ViewGroup;Lf1/u;Lf1/u;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 160
    invoke-virtual {p0}, Lf1/n;->runAnimators()V

    .line 163
    return-void
.end method

.method public removeListener(Lf1/n$g;)Lf1/n;
    .registers 3

    .line 1
    iget-object v0, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    .line 3
    if-nez v0, :cond_5

    .line 5
    return-object p0

    .line 6
    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_13

    .line 17
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    .line 20
    :cond_13
    return-object p0
.end method

.method public removeTarget(I)Lf1/n;
    .registers 3

    if-eqz p1, :cond_b

    .line 2
    iget-object v0, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Lf1/n;
    .registers 3

    .line 1
    iget-object v0, p0, Lf1/n;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public removeTarget(Ljava/lang/Class;)Lf1/n;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lf1/n;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lf1/n;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-object p0
.end method

.method public removeTarget(Ljava/lang/String;)Lf1/n;
    .registers 3

    .line 3
    iget-object v0, p0, Lf1/n;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .registers 6

    .line 1
    iget-boolean p1, p0, Lf1/n;->mPaused:Z

    .line 3
    if-eqz p1, :cond_48

    .line 5
    iget-boolean p1, p0, Lf1/n;->mEnded:Z

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p1, :cond_46

    .line 10
    iget-object p1, p0, Lf1/n;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 15
    move-result p1

    .line 16
    add-int/lit8 p1, p1, -0x1

    .line 18
    :goto_11
    if-ltz p1, :cond_21

    .line 20
    iget-object v1, p0, Lf1/n;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/animation/Animator;

    .line 28
    invoke-virtual {v1}, Landroid/animation/Animator;->resume()V

    .line 31
    add-int/lit8 p1, p1, -0x1

    .line 33
    goto :goto_11

    .line 34
    :cond_21
    iget-object p1, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    .line 36
    if-eqz p1, :cond_46

    .line 38
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 41
    move-result p1

    .line 42
    if-lez p1, :cond_46

    .line 44
    iget-object p1, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/util/ArrayList;

    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 55
    move-result v1

    .line 56
    move v2, v0

    .line 57
    :goto_38
    if-ge v2, v1, :cond_46

    .line 59
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Lf1/n$g;

    .line 65
    invoke-interface {v3, p0}, Lf1/n$g;->onTransitionResume(Lf1/n;)V

    .line 68
    add-int/lit8 v2, v2, 0x1

    .line 70
    goto :goto_38

    .line 71
    :cond_46
    iput-boolean v0, p0, Lf1/n;->mPaused:Z

    .line 73
    :cond_48
    return-void
.end method

.method public runAnimators()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lf1/n;->start()V

    .line 4
    invoke-static {}, Lf1/n;->getRunningAnimators()Landroidx/collection/a;

    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lf1/n;->mAnimators:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v1

    .line 14
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_26

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/animation/Animator;

    .line 26
    invoke-virtual {v0, v2}, Landroidx/collection/f;->containsKey(Ljava/lang/Object;)Z

    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_d

    .line 32
    invoke-virtual {p0}, Lf1/n;->start()V

    .line 35
    invoke-direct {p0, v2, v0}, Lf1/n;->runAnimator(Landroid/animation/Animator;Landroidx/collection/a;)V

    .line 38
    goto :goto_d

    .line 39
    :cond_26
    iget-object v0, p0, Lf1/n;->mAnimators:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 44
    invoke-virtual {p0}, Lf1/n;->end()V

    .line 47
    return-void
.end method

.method public setCanRemoveViews(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lf1/n;->mCanRemoveViews:Z

    .line 3
    return-void
.end method

.method public setDuration(J)Lf1/n;
    .registers 3

    .line 1
    iput-wide p1, p0, Lf1/n;->mDuration:J

    .line 3
    return-object p0
.end method

.method public setEpicenterCallback(Lf1/n$f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lf1/n;->mEpicenterCallback:Lf1/n$f;

    .line 3
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Lf1/n;
    .registers 2

    .line 1
    iput-object p1, p0, Lf1/n;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 3
    return-object p0
.end method

.method public varargs setMatchOrder([I)V
    .registers 4

    .line 1
    if-eqz p1, :cond_34

    .line 3
    array-length v0, p1

    .line 4
    if-nez v0, :cond_6

    .line 6
    goto :goto_34

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    array-length v1, p1

    .line 9
    if-ge v0, v1, :cond_2b

    .line 11
    aget v1, p1, v0

    .line 13
    invoke-static {v1}, Lf1/n;->isValidMatch(I)Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_23

    .line 19
    invoke-static {p1, v0}, Lf1/n;->alreadyContains([II)Z

    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1b

    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 27
    goto :goto_7

    .line 28
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    const-string v0, "matches contains a duplicate value"

    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    throw p1

    .line 36
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 38
    const-string v0, "matches contains invalid value"

    .line 40
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    throw p1

    .line 44
    :cond_2b
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    .line 47
    move-result-object p1

    .line 48
    check-cast p1, [I

    .line 50
    iput-object p1, p0, Lf1/n;->mMatchOrder:[I

    .line 52
    goto :goto_38

    .line 53
    :cond_34
    :goto_34
    sget-object p1, Lf1/n;->DEFAULT_MATCH_ORDER:[I

    .line 55
    iput-object p1, p0, Lf1/n;->mMatchOrder:[I

    .line 57
    :goto_38
    return-void
.end method

.method public setPathMotion(Lf1/j;)V
    .registers 2

    .line 1
    if-nez p1, :cond_7

    .line 3
    sget-object p1, Lf1/n;->STRAIGHT_PATH_MOTION:Lf1/j;

    .line 5
    iput-object p1, p0, Lf1/n;->mPathMotion:Lf1/j;

    .line 7
    goto :goto_9

    .line 8
    :cond_7
    iput-object p1, p0, Lf1/n;->mPathMotion:Lf1/j;

    .line 10
    :goto_9
    return-void
.end method

.method public setPropagation(Lf1/q;)V
    .registers 2

    return-void
.end method

.method public setStartDelay(J)Lf1/n;
    .registers 3

    .line 1
    iput-wide p1, p0, Lf1/n;->mStartDelay:J

    .line 3
    return-object p0
.end method

.method public start()V
    .registers 6

    .line 1
    iget v0, p0, Lf1/n;->mNumInstances:I

    .line 3
    if-nez v0, :cond_2c

    .line 5
    iget-object v0, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2a

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_2a

    .line 16
    iget-object v0, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 27
    move-result v2

    .line 28
    move v3, v1

    .line 29
    :goto_1c
    if-ge v3, v2, :cond_2a

    .line 31
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lf1/n$g;

    .line 37
    invoke-interface {v4, p0}, Lf1/n$g;->onTransitionStart(Lf1/n;)V

    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 42
    goto :goto_1c

    .line 43
    :cond_2a
    iput-boolean v1, p0, Lf1/n;->mEnded:Z

    .line 45
    :cond_2c
    iget v0, p0, Lf1/n;->mNumInstances:I

    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 49
    iput v0, p0, Lf1/n;->mNumInstances:I

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    .line 67
    invoke-virtual {p0, v0}, Lf1/n;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-wide v0, p0, Lf1/n;->mDuration:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const-string v1, ") "

    if-eqz v0, :cond_44

    const-string v0, "dur("

    .line 5
    invoke-static {p1, v0}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 6
    iget-wide v4, p0, Lf1/n;->mDuration:J

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_44
    iget-wide v4, p0, Lf1/n;->mStartDelay:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_5c

    const-string v0, "dly("

    .line 8
    invoke-static {p1, v0}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 9
    iget-wide v2, p0, Lf1/n;->mStartDelay:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    :cond_5c
    iget-object v0, p0, Lf1/n;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_72

    const-string v0, "interp("

    .line 11
    invoke-static {p1, v0}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lf1/n;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    :cond_72
    iget-object v0, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_82

    iget-object v0, p0, Lf1/n;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e6

    :cond_82
    const-string v0, "tgts("

    .line 14
    invoke-static {p1, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    iget-object v0, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ", "

    const/4 v2, 0x0

    if-lez v0, :cond_b6

    move v0, v2

    .line 16
    :goto_94
    iget-object v3, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_b6

    if-lez v0, :cond_a2

    .line 17
    invoke-static {p1, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    :cond_a2
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 19
    iget-object v3, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_94

    .line 20
    :cond_b6
    iget-object v0, p0, Lf1/n;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e0

    .line 21
    :goto_be
    iget-object v0, p0, Lf1/n;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_e0

    if-lez v2, :cond_cc

    .line 22
    invoke-static {p1, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    :cond_cc
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lf1/n;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_be

    :cond_e0
    const-string v0, ")"

    .line 25
    invoke-static {p1, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_e6
    return-object p1
.end method
