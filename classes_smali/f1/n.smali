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

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Lf1/n;->DEFAULT_MATCH_ORDER:[I

    new-instance v0, Lf1/n$a;

    invoke-direct {v0}, Lf1/n$a;-><init>()V

    sput-object v0, Lf1/n;->STRAIGHT_PATH_MOTION:Lf1/j;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lf1/n;->sRunningAnimators:Ljava/lang/ThreadLocal;

    return-void

    nop

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf1/n;->mName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lf1/n;->mStartDelay:J

    iput-wide v0, p0, Lf1/n;->mDuration:J

    const/4 v0, 0x0

    iput-object v0, p0, Lf1/n;->mInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lf1/n;->mTargets:Ljava/util/ArrayList;

    iput-object v0, p0, Lf1/n;->mTargetNames:Ljava/util/ArrayList;

    iput-object v0, p0, Lf1/n;->mTargetTypes:Ljava/util/ArrayList;

    iput-object v0, p0, Lf1/n;->mTargetIdExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Lf1/n;->mTargetExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Lf1/n;->mTargetTypeExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Lf1/n;->mTargetNameExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Lf1/n;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Lf1/n;->mTargetChildExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Lf1/n;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    new-instance v1, Lf1/u;

    invoke-direct {v1}, Lf1/u;-><init>()V

    iput-object v1, p0, Lf1/n;->mStartValues:Lf1/u;

    new-instance v1, Lf1/u;

    invoke-direct {v1}, Lf1/u;-><init>()V

    iput-object v1, p0, Lf1/n;->mEndValues:Lf1/u;

    iput-object v0, p0, Lf1/n;->mParent:Lf1/r;

    sget-object v1, Lf1/n;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Lf1/n;->mMatchOrder:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lf1/n;->mCanRemoveViews:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lf1/n;->mCurrentAnimators:Ljava/util/ArrayList;

    iput v1, p0, Lf1/n;->mNumInstances:I

    iput-boolean v1, p0, Lf1/n;->mPaused:Z

    iput-boolean v1, p0, Lf1/n;->mEnded:Z

    iput-object v0, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf1/n;->mAnimators:Ljava/util/ArrayList;

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf1/n;->mName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lf1/n;->mStartDelay:J

    iput-wide v0, p0, Lf1/n;->mDuration:J

    const/4 v0, 0x0

    iput-object v0, p0, Lf1/n;->mInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lf1/n;->mTargets:Ljava/util/ArrayList;

    iput-object v0, p0, Lf1/n;->mTargetNames:Ljava/util/ArrayList;

    iput-object v0, p0, Lf1/n;->mTargetTypes:Ljava/util/ArrayList;

    iput-object v0, p0, Lf1/n;->mTargetIdExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Lf1/n;->mTargetExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Lf1/n;->mTargetTypeExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Lf1/n;->mTargetNameExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Lf1/n;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Lf1/n;->mTargetChildExcludes:Ljava/util/ArrayList;

    iput-object v0, p0, Lf1/n;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    new-instance v1, Lf1/u;

    invoke-direct {v1}, Lf1/u;-><init>()V

    iput-object v1, p0, Lf1/n;->mStartValues:Lf1/u;

    new-instance v1, Lf1/u;

    invoke-direct {v1}, Lf1/u;-><init>()V

    iput-object v1, p0, Lf1/n;->mEndValues:Lf1/u;

    iput-object v0, p0, Lf1/n;->mParent:Lf1/r;

    sget-object v1, Lf1/n;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Lf1/n;->mMatchOrder:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lf1/n;->mCanRemoveViews:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lf1/n;->mCurrentAnimators:Ljava/util/ArrayList;

    iput v1, p0, Lf1/n;->mNumInstances:I

    iput-boolean v1, p0, Lf1/n;->mPaused:Z

    iput-boolean v1, p0, Lf1/n;->mEnded:Z

    iput-object v0, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf1/n;->mAnimators:Ljava/util/ArrayList;

    sget-object v0, Lf1/n;->STRAIGHT_PATH_MOTION:Lf1/j;

    iput-object v0, p0, Lf1/n;->mPathMotion:Lf1/j;

    sget-object v0, Lf1/m;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v2, "duration"

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-static {v0, p2, v2, v3, v4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-ltz v7, :cond_81

    invoke-virtual {p0, v2, v3}, Lf1/n;->setDuration(J)Lf1/n;

    :cond_81
    const/4 v2, 0x2

    const-string v3, "startDelay"

    invoke-static {v0, p2, v3, v2, v4}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v2, v5

    if-lez v4, :cond_90

    invoke-virtual {p0, v2, v3}, Lf1/n;->setStartDelay(J)Lf1/n;

    :cond_90
    const-string v2, "interpolator"

    invoke-static {v0, p2, v2, v1, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    if-lez v1, :cond_9f

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf1/n;->setInterpolator(Landroid/animation/TimeInterpolator;)Lf1/n;

    :cond_9f
    const/4 p1, 0x3

    const-string v1, "matchOrder"

    invoke-static {v0, p2, v1, p1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_af

    invoke-static {p1}, Lf1/n;->parseMatchOrder(Ljava/lang/String;)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lf1/n;->setMatchOrder([I)V

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

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Landroidx/collection/f;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_24

    invoke-virtual {p1, v1}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/t;

    iget-object v4, v2, Lf1/t;->b:Landroid/view/View;

    invoke-virtual {p0, v4}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_21

    iget-object v4, p0, Lf1/n;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lf1/n;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_24
    :goto_24
    invoke-virtual {p2}, Landroidx/collection/f;->size()I

    move-result p1

    if-ge v0, p1, :cond_45

    invoke-virtual {p2, v0}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf1/t;

    iget-object v1, p1, Lf1/t;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lf1/n;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lf1/n;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_45
    return-void
.end method

.method private static addViewValues(Lf1/u;Landroid/view/View;Lf1/t;)V
    .registers 7

    iget-object v0, p0, Lf1/u;->a:Landroidx/collection/a;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1f

    iget-object v1, p0, Lf1/u;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1a

    iget-object v1, p0, Lf1/u;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1f

    :cond_1a
    iget-object v1, p0, Lf1/u;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1f
    :goto_1f
    sget-object p2, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lm0/g0$i;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3a

    iget-object v1, p0, Lf1/u;->d:Landroidx/collection/a;

    invoke-virtual {v1, p2}, Landroidx/collection/f;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lf1/u;->d:Landroidx/collection/a;

    invoke-virtual {v1, p2, v0}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    :cond_35
    iget-object v1, p0, Lf1/u;->d:Landroidx/collection/a;

    invoke-virtual {v1, p2, p1}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    :goto_3a
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_8a

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-virtual {p2, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v1

    iget-object p2, p0, Lf1/u;->c:Landroidx/collection/d;

    iget-boolean v3, p2, Landroidx/collection/d;->a:Z

    if-eqz v3, :cond_63

    invoke-virtual {p2}, Landroidx/collection/d;->c()V

    :cond_63
    iget-object v3, p2, Landroidx/collection/d;->b:[J

    iget p2, p2, Landroidx/collection/d;->d:I

    invoke-static {v3, p2, v1, v2}, La/b;->i([JIJ)I

    move-result p2

    if-ltz p2, :cond_81

    iget-object p1, p0, Lf1/u;->c:Landroidx/collection/d;

    invoke-virtual {p1, v1, v2, v0}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_8a

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lm0/g0$d;->r(Landroid/view/View;Z)V

    iget-object p0, p0, Lf1/u;->c:Landroidx/collection/d;

    invoke-virtual {p0, v1, v2, v0}, Landroidx/collection/d;->f(JLjava/lang/Object;)V

    goto :goto_8a

    :cond_81
    const/4 p2, 0x1

    invoke-static {p1, p2}, Lm0/g0$d;->r(Landroid/view/View;Z)V

    iget-object p0, p0, Lf1/u;->c:Landroidx/collection/d;

    invoke-virtual {p0, v1, v2, p1}, Landroidx/collection/d;->f(JLjava/lang/Object;)V

    :cond_8a
    :goto_8a
    return-void
.end method

.method private static alreadyContains([II)Z
    .registers 6

    aget v0, p0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v2, p1, :cond_f

    aget v3, p0, v2

    if-ne v3, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_f
    return v1
.end method

.method private captureHierarchy(Landroid/view/View;Z)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lf1/n;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    return-void

    :cond_16
    iget-object v1, p0, Lf1/n;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_21

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    return-void

    :cond_21
    iget-object v1, p0, Lf1/n;->mTargetTypeExcludes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_2b
    if-ge v3, v1, :cond_3f

    iget-object v4, p0, Lf1/n;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    return-void

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    :cond_3f
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6a

    new-instance v1, Lf1/t;

    invoke-direct {v1, p1}, Lf1/t;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_52

    invoke-virtual {p0, v1}, Lf1/n;->captureStartValues(Lf1/t;)V

    goto :goto_55

    :cond_52
    invoke-virtual {p0, v1}, Lf1/n;->captureEndValues(Lf1/t;)V

    :goto_55
    iget-object v3, v1, Lf1/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lf1/n;->capturePropagationValues(Lf1/t;)V

    if-eqz p2, :cond_65

    iget-object v3, p0, Lf1/n;->mStartValues:Lf1/u;

    invoke-static {v3, p1, v1}, Lf1/n;->addViewValues(Lf1/u;Landroid/view/View;Lf1/t;)V

    goto :goto_6a

    :cond_65
    iget-object v3, p0, Lf1/n;->mEndValues:Lf1/u;

    invoke-static {v3, p1, v1}, Lf1/n;->addViewValues(Lf1/u;Landroid/view/View;Lf1/t;)V

    :cond_6a
    :goto_6a
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lf1/n;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_7d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    return-void

    :cond_7d
    iget-object v0, p0, Lf1/n;->mTargetChildExcludes:Ljava/util/ArrayList;

    if-eqz v0, :cond_88

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    return-void

    :cond_88
    iget-object v0, p0, Lf1/n;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    if-eqz v0, :cond_a5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    :goto_91
    if-ge v1, v0, :cond_a5

    iget-object v3, p0, Lf1/n;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a2

    return-void

    :cond_a2
    add-int/lit8 v1, v1, 0x1

    goto :goto_91

    :cond_a5
    check-cast p1, Landroid/view/ViewGroup;

    :goto_a7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_b7

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lf1/n;->captureHierarchy(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

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

    if-lez p2, :cond_15

    if-eqz p3, :cond_d

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lf1/n$e;->a(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_15

    :cond_d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lf1/n$e;->b(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

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

    if-eqz p1, :cond_d

    if-eqz p2, :cond_9

    invoke-static {p0, p1}, Lf1/n$e;->a(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_d

    :cond_9
    invoke-static {p0, p1}, Lf1/n$e;->b(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

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

    if-eqz p2, :cond_d

    if-eqz p3, :cond_9

    invoke-static {p1, p2}, Lf1/n$e;->a(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_d

    :cond_9
    invoke-static {p1, p2}, Lf1/n$e;->b(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

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

    if-eqz p2, :cond_d

    if-eqz p3, :cond_9

    invoke-static {p1, p2}, Lf1/n$e;->a(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_d

    :cond_9
    invoke-static {p1, p2}, Lf1/n$e;->b(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

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

    sget-object v0, Lf1/n;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/a;

    if-nez v0, :cond_14

    new-instance v0, Landroidx/collection/a;

    invoke-direct {v0}, Landroidx/collection/a;-><init>()V

    sget-object v1, Lf1/n;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

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

    iget-object p0, p0, Lf1/t;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p1, Lf1/t;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p0, :cond_13

    if-nez p1, :cond_13

    const/4 p2, 0x0

    goto :goto_1d

    :cond_13
    if-eqz p0, :cond_1d

    if-nez p1, :cond_18

    goto :goto_1d

    :cond_18
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p2, p0

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

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_4a

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_47

    invoke-virtual {p0, v2}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_47

    invoke-virtual {p0, v3}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-virtual {p1, v2}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf1/t;

    invoke-virtual {p2, v3}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf1/t;

    if-eqz v4, :cond_47

    if-eqz v5, :cond_47

    iget-object v6, p0, Lf1/n;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lf1/n;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v3}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

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

    invoke-virtual {p1}, Landroidx/collection/f;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_39

    invoke-virtual {p1, v0}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_36

    invoke-virtual {p0, v1}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {p2, v1}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/t;

    if-eqz v1, :cond_36

    iget-object v2, v1, Lf1/t;->b:Landroid/view/View;

    invoke-virtual {p0, v2}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {p1, v0}, Landroidx/collection/f;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf1/t;

    iget-object v3, p0, Lf1/n;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lf1/n;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

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

    invoke-virtual {p3}, Landroidx/collection/d;->h()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_4b

    invoke-virtual {p3, v1}, Landroidx/collection/d;->i(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_48

    invoke-virtual {p0, v2}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual {p3, v1}, Landroidx/collection/d;->e(I)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {p4, v3, v4, v5}, Landroidx/collection/d;->d(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_48

    invoke-virtual {p0, v3}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-virtual {p1, v2}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf1/t;

    invoke-virtual {p2, v3}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf1/t;

    if-eqz v4, :cond_48

    if-eqz v5, :cond_48

    iget-object v6, p0, Lf1/n;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lf1/n;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v3}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

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

    invoke-virtual {p3}, Landroidx/collection/f;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_4a

    invoke-virtual {p3, v1}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_47

    invoke-virtual {p0, v2}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {p3, v1}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_47

    invoke-virtual {p0, v3}, Lf1/n;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-virtual {p1, v2}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf1/t;

    invoke-virtual {p2, v3}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf1/t;

    if-eqz v4, :cond_47

    if-eqz v5, :cond_47

    iget-object v6, p0, Lf1/n;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lf1/n;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v3}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4a
    return-void
.end method

.method private matchStartAndEnd(Lf1/u;Lf1/u;)V
    .registers 8

    new-instance v0, Landroidx/collection/a;

    iget-object v1, p1, Lf1/u;->a:Landroidx/collection/a;

    invoke-direct {v0, v1}, Landroidx/collection/a;-><init>(Landroidx/collection/f;)V

    new-instance v1, Landroidx/collection/a;

    iget-object v2, p2, Lf1/u;->a:Landroidx/collection/a;

    invoke-direct {v1, v2}, Landroidx/collection/a;-><init>(Landroidx/collection/f;)V

    const/4 v2, 0x0

    :goto_f
    iget-object v3, p0, Lf1/n;->mMatchOrder:[I

    array-length v4, v3

    if-ge v2, v4, :cond_41

    aget v3, v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3b

    const/4 v4, 0x2

    if-eq v3, v4, :cond_33

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2b

    const/4 v4, 0x4

    if-eq v3, v4, :cond_23

    goto :goto_3e

    :cond_23
    iget-object v3, p1, Lf1/u;->c:Landroidx/collection/d;

    iget-object v4, p2, Lf1/u;->c:Landroidx/collection/d;

    invoke-direct {p0, v0, v1, v3, v4}, Lf1/n;->matchItemIds(Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/d;Landroidx/collection/d;)V

    goto :goto_3e

    :cond_2b
    iget-object v3, p1, Lf1/u;->b:Landroid/util/SparseArray;

    iget-object v4, p2, Lf1/u;->b:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Lf1/n;->matchIds(Landroidx/collection/a;Landroidx/collection/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_3e

    :cond_33
    iget-object v3, p1, Lf1/u;->d:Landroidx/collection/a;

    iget-object v4, p2, Lf1/u;->d:Landroidx/collection/a;

    invoke-direct {p0, v0, v1, v3, v4}, Lf1/n;->matchNames(Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/a;Landroidx/collection/a;)V

    goto :goto_3e

    :cond_3b
    invoke-direct {p0, v0, v1}, Lf1/n;->matchInstances(Landroidx/collection/a;Landroidx/collection/a;)V

    :goto_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_41
    invoke-direct {p0, v0, v1}, Lf1/n;->addUnmatched(Landroidx/collection/a;Landroidx/collection/a;)V

    return-void
.end method

.method private static parseMatchOrder(Ljava/lang/String;)[I
    .registers 7

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    new-array p0, p0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2a

    const/4 v3, 0x3

    aput v3, p0, v2

    goto :goto_5d

    :cond_2a
    const-string v4, "instance"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    aput v5, p0, v2

    goto :goto_5d

    :cond_35
    const-string v4, "name"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    const/4 v3, 0x2

    aput v3, p0, v2

    goto :goto_5d

    :cond_41
    const-string v4, "itemId"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    const/4 v3, 0x4

    aput v3, p0, v2

    goto :goto_5d

    :cond_4d
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5f

    array-length v3, p0

    sub-int/2addr v3, v5

    new-array v3, v3, [I

    invoke-static {p0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, -0x1

    move-object p0, v3

    :goto_5d
    add-int/2addr v2, v5

    goto :goto_f

    :cond_5f
    new-instance p0, Landroid/view/InflateException;

    const-string v0, "Unknown match type in matchOrder: \'"

    const-string v1, "\'"

    invoke-static {v0, v3, v1}, La/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0

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

    if-eqz p1, :cond_d

    new-instance v0, Lf1/n$b;

    invoke-direct {v0, p0, p2}, Lf1/n$b;-><init>(Lf1/n;Landroidx/collection/a;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p1}, Lf1/n;->animate(Landroid/animation/Animator;)V

    :cond_d
    return-void
.end method


# virtual methods
.method public addListener(Lf1/n$g;)Lf1/n;
    .registers 3

    iget-object v0, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTarget(I)Lf1/n;
    .registers 3

    if-eqz p1, :cond_b

    iget-object v0, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Lf1/n;
    .registers 3

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

    iget-object v0, p0, Lf1/n;->mTargetTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf1/n;->mTargetTypes:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lf1/n;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTarget(Ljava/lang/String;)Lf1/n;
    .registers 3

    iget-object v0, p0, Lf1/n;->mTargetNames:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf1/n;->mTargetNames:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lf1/n;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public animate(Landroid/animation/Animator;)V
    .registers 6

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lf1/n;->end()V

    goto :goto_43

    :cond_6
    invoke-virtual {p0}, Lf1/n;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_17

    invoke-virtual {p0}, Lf1/n;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_17
    invoke-virtual {p0}, Lf1/n;->getStartDelay()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2b

    invoke-virtual {p0}, Lf1/n;->getStartDelay()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_2b
    invoke-virtual {p0}, Lf1/n;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Lf1/n;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_38
    new-instance v0, Lf1/n$c;

    invoke-direct {v0, p0}, Lf1/n$c;-><init>(Lf1/n;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :goto_43
    return-void
.end method

.method public cancel()V
    .registers 5

    iget-object v0, p0, Lf1/n;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    iget-object v1, p0, Lf1/n;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    iget-object v0, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3d

    iget-object v0, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2f
    if-ge v2, v1, :cond_3d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf1/n$g;

    invoke-interface {v3, p0}, Lf1/n$g;->onTransitionCancel(Lf1/n;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

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

    invoke-virtual {p0, p2}, Lf1/n;->clearValues(Z)V

    iget-object v0, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_14

    iget-object v0, p0, Lf1/n;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_29

    :cond_14
    iget-object v0, p0, Lf1/n;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_1e
    iget-object v0, p0, Lf1/n;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2e

    :cond_29
    invoke-direct {p0, p1, p2}, Lf1/n;->captureHierarchy(Landroid/view/View;Z)V

    goto/16 :goto_a6

    :cond_2e
    :goto_2e
    move v0, v1

    :goto_2f
    iget-object v2, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6f

    iget-object v2, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6c

    new-instance v3, Lf1/t;

    invoke-direct {v3, v2}, Lf1/t;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_54

    invoke-virtual {p0, v3}, Lf1/n;->captureStartValues(Lf1/t;)V

    goto :goto_57

    :cond_54
    invoke-virtual {p0, v3}, Lf1/n;->captureEndValues(Lf1/t;)V

    :goto_57
    iget-object v4, v3, Lf1/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Lf1/n;->capturePropagationValues(Lf1/t;)V

    if-eqz p2, :cond_67

    iget-object v4, p0, Lf1/n;->mStartValues:Lf1/u;

    invoke-static {v4, v2, v3}, Lf1/n;->addViewValues(Lf1/u;Landroid/view/View;Lf1/t;)V

    goto :goto_6c

    :cond_67
    iget-object v4, p0, Lf1/n;->mEndValues:Lf1/u;

    invoke-static {v4, v2, v3}, Lf1/n;->addViewValues(Lf1/u;Landroid/view/View;Lf1/t;)V

    :cond_6c
    :goto_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_6f
    move p1, v1

    :goto_70
    iget-object v0, p0, Lf1/n;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_a6

    iget-object v0, p0, Lf1/n;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v2, Lf1/t;

    invoke-direct {v2, v0}, Lf1/t;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_8b

    invoke-virtual {p0, v2}, Lf1/n;->captureStartValues(Lf1/t;)V

    goto :goto_8e

    :cond_8b
    invoke-virtual {p0, v2}, Lf1/n;->captureEndValues(Lf1/t;)V

    :goto_8e
    iget-object v3, v2, Lf1/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lf1/n;->capturePropagationValues(Lf1/t;)V

    if-eqz p2, :cond_9e

    iget-object v3, p0, Lf1/n;->mStartValues:Lf1/u;

    invoke-static {v3, v0, v2}, Lf1/n;->addViewValues(Lf1/u;Landroid/view/View;Lf1/t;)V

    goto :goto_a3

    :cond_9e
    iget-object v3, p0, Lf1/n;->mEndValues:Lf1/u;

    invoke-static {v3, v0, v2}, Lf1/n;->addViewValues(Lf1/u;Landroid/view/View;Lf1/t;)V

    :goto_a3
    add-int/lit8 p1, p1, 0x1

    goto :goto_70

    :cond_a6
    :goto_a6
    if-nez p2, :cond_ea

    iget-object p1, p0, Lf1/n;->mNameOverrides:Landroidx/collection/a;

    if-eqz p1, :cond_ea

    invoke-virtual {p1}, Landroidx/collection/f;->size()I

    move-result p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_b6
    if-ge v0, p1, :cond_ce

    iget-object v2, p0, Lf1/n;->mNameOverrides:Landroidx/collection/a;

    invoke-virtual {v2, v0}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lf1/n;->mStartValues:Lf1/u;

    iget-object v3, v3, Lf1/u;->d:Landroidx/collection/a;

    invoke-virtual {v3, v2}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    :cond_ce
    :goto_ce
    if-ge v1, p1, :cond_ea

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_e7

    iget-object v2, p0, Lf1/n;->mNameOverrides:Landroidx/collection/a;

    invoke-virtual {v2, v1}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lf1/n;->mStartValues:Lf1/u;

    iget-object v3, v3, Lf1/u;->d:Landroidx/collection/a;

    invoke-virtual {v3, v2, v0}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e7
    add-int/lit8 v1, v1, 0x1

    goto :goto_ce

    :cond_ea
    return-void
.end method

.method public clearValues(Z)V
    .registers 2

    if-eqz p1, :cond_18

    iget-object p1, p0, Lf1/n;->mStartValues:Lf1/u;

    iget-object p1, p1, Lf1/u;->a:Landroidx/collection/a;

    invoke-virtual {p1}, Landroidx/collection/f;->clear()V

    iget-object p1, p0, Lf1/n;->mStartValues:Lf1/u;

    iget-object p1, p1, Lf1/u;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Lf1/n;->mStartValues:Lf1/u;

    iget-object p1, p1, Lf1/u;->c:Landroidx/collection/d;

    invoke-virtual {p1}, Landroidx/collection/d;->a()V

    goto :goto_2d

    :cond_18
    iget-object p1, p0, Lf1/n;->mEndValues:Lf1/u;

    iget-object p1, p1, Lf1/u;->a:Landroidx/collection/a;

    invoke-virtual {p1}, Landroidx/collection/f;->clear()V

    iget-object p1, p0, Lf1/n;->mEndValues:Lf1/u;

    iget-object p1, p1, Lf1/u;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    iget-object p1, p0, Lf1/n;->mEndValues:Lf1/u;

    iget-object p1, p1, Lf1/u;->c:Landroidx/collection/d;

    invoke-virtual {p1}, Landroidx/collection/d;->a()V

    :goto_2d
    return-void
.end method

.method public clone()Lf1/n;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lf1/n;->mAnimators:Ljava/util/ArrayList;

    new-instance v2, Lf1/u;

    invoke-direct {v2}, Lf1/u;-><init>()V

    iput-object v2, v1, Lf1/n;->mStartValues:Lf1/u;

    new-instance v2, Lf1/u;

    invoke-direct {v2}, Lf1/u;-><init>()V

    iput-object v2, v1, Lf1/n;->mEndValues:Lf1/u;

    iput-object v0, v1, Lf1/n;->mStartValuesList:Ljava/util/ArrayList;

    iput-object v0, v1, Lf1/n;->mEndValuesList:Ljava/util/ArrayList;
    :try_end_20
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_20} :catch_21

    return-object v1

    :catch_21
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

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

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-static {}, Lf1/n;->getRunningAnimators()Landroidx/collection/a;

    move-result-object v8

    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v12, 0x0

    :goto_12
    const-wide v0, 0x7fffffffffffffffL

    if-ge v12, v10, :cond_10d

    move-object/from16 v13, p4

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/t;

    move-object/from16 v14, p5

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/t;

    if-eqz v0, :cond_34

    iget-object v3, v0, Lf1/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    const/4 v0, 0x0

    :cond_34
    if-eqz v1, :cond_3f

    iget-object v3, v1, Lf1/t;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    const/4 v1, 0x0

    :cond_3f
    if-nez v0, :cond_47

    if-nez v1, :cond_47

    :cond_43
    move-object/from16 v15, p3

    goto/16 :goto_107

    :cond_47
    if-eqz v0, :cond_54

    if-eqz v1, :cond_54

    invoke-virtual {v6, v0, v1}, Lf1/n;->isTransitionRequired(Lf1/t;Lf1/t;)Z

    move-result v3

    if-eqz v3, :cond_52

    goto :goto_54

    :cond_52
    const/4 v3, 0x0

    goto :goto_55

    :cond_54
    :goto_54
    const/4 v3, 0x1

    :goto_55
    if-eqz v3, :cond_43

    invoke-virtual {v6, v7, v0, v1}, Lf1/n;->createAnimator(Landroid/view/ViewGroup;Lf1/t;Lf1/t;)Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_43

    if-eqz v1, :cond_db

    iget-object v0, v1, Lf1/t;->b:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lf1/n;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d0

    array-length v4, v1

    if-lez v4, :cond_d0

    new-instance v4, Lf1/t;

    invoke-direct {v4, v0}, Lf1/t;-><init>(Landroid/view/View;)V

    move-object/from16 v15, p3

    iget-object v5, v15, Lf1/u;->a:Landroidx/collection/a;

    invoke-virtual {v5, v0}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf1/t;

    if-eqz v5, :cond_97

    const/4 v2, 0x0

    :goto_7c
    array-length v11, v1

    if-ge v2, v11, :cond_97

    iget-object v11, v4, Lf1/t;->a:Ljava/util/HashMap;

    move-object/from16 v16, v3

    aget-object v3, v1, v2

    move-object/from16 v17, v1

    iget-object v1, v5, Lf1/t;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v11, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v16

    move-object/from16 v1, v17

    goto :goto_7c

    :cond_97
    move-object/from16 v16, v3

    invoke-virtual {v8}, Landroidx/collection/f;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_9e
    if-ge v2, v1, :cond_cd

    invoke-virtual {v8, v2}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-virtual {v8, v3}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf1/n$d;

    iget-object v5, v3, Lf1/n$d;->c:Lf1/t;

    if-eqz v5, :cond_ca

    iget-object v5, v3, Lf1/n$d;->a:Landroid/view/View;

    if-ne v5, v0, :cond_ca

    iget-object v5, v3, Lf1/n$d;->b:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lf1/n;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ca

    iget-object v3, v3, Lf1/n$d;->c:Lf1/t;

    invoke-virtual {v3, v4}, Lf1/t;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ca

    const/4 v2, 0x0

    goto :goto_d7

    :cond_ca
    add-int/lit8 v2, v2, 0x1

    goto :goto_9e

    :cond_cd
    move-object/from16 v2, v16

    goto :goto_d7

    :cond_d0
    move-object/from16 v15, p3

    move-object/from16 v16, v3

    move-object/from16 v2, v16

    const/4 v4, 0x0

    :goto_d7
    move-object v1, v0

    move-object v11, v2

    move-object v5, v4

    goto :goto_e5

    :cond_db
    move-object/from16 v15, p3

    move-object/from16 v16, v3

    iget-object v0, v0, Lf1/t;->b:Landroid/view/View;

    move-object v1, v0

    move-object/from16 v11, v16

    const/4 v5, 0x0

    :goto_e5
    if-eqz v11, :cond_107

    new-instance v4, Lf1/n$d;

    invoke-virtual/range {p0 .. p0}, Lf1/n;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lf1/w;->a:Lf1/b0;

    new-instance v3, Lf1/e0;

    invoke-direct {v3, v7}, Lf1/e0;-><init>(Landroid/view/View;)V

    move-object v0, v4

    move-object/from16 v16, v3

    move-object/from16 v3, p0

    move-object v7, v4

    move-object/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lf1/n$d;-><init>(Landroid/view/View;Ljava/lang/String;Lf1/n;Lf1/e0;Lf1/t;)V

    invoke-virtual {v8, v11, v7}, Landroidx/collection/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v6, Lf1/n;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_107
    :goto_107
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, p1

    goto/16 :goto_12

    :cond_10d
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-eqz v2, :cond_137

    const/4 v11, 0x0

    :goto_114
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_137

    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, v6, Lf1/n;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v9, v11}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v3, v0

    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v7

    add-long/2addr v7, v3

    invoke-virtual {v2, v7, v8}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_114

    :cond_137
    return-void
.end method

.method public end()V
    .registers 7

    iget v0, p0, Lf1/n;->mNumInstances:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lf1/n;->mNumInstances:I

    if-nez v0, :cond_6e

    iget-object v0, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2e

    iget-object v0, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_20
    if-ge v4, v3, :cond_2e

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf1/n$g;

    invoke-interface {v5, p0}, Lf1/n$g;->onTransitionEnd(Lf1/n;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_2e
    move v0, v2

    :goto_2f
    iget-object v3, p0, Lf1/n;->mStartValues:Lf1/u;

    iget-object v3, v3, Lf1/u;->c:Landroidx/collection/d;

    invoke-virtual {v3}, Landroidx/collection/d;->h()I

    move-result v3

    if-ge v0, v3, :cond_4d

    iget-object v3, p0, Lf1/n;->mStartValues:Lf1/u;

    iget-object v3, v3, Lf1/u;->c:Landroidx/collection/d;

    invoke-virtual {v3, v0}, Landroidx/collection/d;->i(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_4a

    sget-object v4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v3, v2}, Lm0/g0$d;->r(Landroid/view/View;Z)V

    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_4d
    move v0, v2

    :goto_4e
    iget-object v3, p0, Lf1/n;->mEndValues:Lf1/u;

    iget-object v3, v3, Lf1/u;->c:Landroidx/collection/d;

    invoke-virtual {v3}, Landroidx/collection/d;->h()I

    move-result v3

    if-ge v0, v3, :cond_6c

    iget-object v3, p0, Lf1/n;->mEndValues:Lf1/u;

    iget-object v3, v3, Lf1/u;->c:Landroidx/collection/d;

    invoke-virtual {v3, v0}, Landroidx/collection/d;->i(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_69

    sget-object v4, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {v3, v2}, Lm0/g0$d;->r(Landroid/view/View;Z)V

    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    :cond_6c
    iput-boolean v1, p0, Lf1/n;->mEnded:Z

    :cond_6e
    return-void
.end method

.method public excludeChildren(IZ)Lf1/n;
    .registers 4

    iget-object v0, p0, Lf1/n;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lf1/n;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lf1/n;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Lf1/n;
    .registers 4

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

    iget-object v0, p0, Lf1/n;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lf1/n;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lf1/n;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(IZ)Lf1/n;
    .registers 4

    iget-object v0, p0, Lf1/n;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lf1/n;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lf1/n;->mTargetIdExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Lf1/n;
    .registers 4

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

    iget-object v0, p0, Lf1/n;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lf1/n;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lf1/n;->mTargetTypeExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public excludeTarget(Ljava/lang/String;Z)Lf1/n;
    .registers 4

    iget-object v0, p0, Lf1/n;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Lf1/n;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lf1/n;->mTargetNameExcludes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public forceToEnd(Landroid/view/ViewGroup;)V
    .registers 7

    invoke-static {}, Lf1/n;->getRunningAnimators()Landroidx/collection/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/f;->size()I

    move-result v1

    if-eqz p1, :cond_4a

    if-nez v1, :cond_d

    goto :goto_4a

    :cond_d
    sget-object v2, Lf1/w;->a:Lf1/b0;

    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object p1

    new-instance v2, Landroidx/collection/a;

    invoke-direct {v2, v0}, Landroidx/collection/a;-><init>(Landroidx/collection/f;)V

    invoke-virtual {v0}, Landroidx/collection/f;->clear()V

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    :goto_1d
    if-ltz v1, :cond_4a

    invoke-virtual {v2, v1}, Landroidx/collection/f;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf1/n$d;

    iget-object v4, v3, Lf1/n$d;->a:Landroid/view/View;

    if-eqz v4, :cond_47

    iget-object v3, v3, Lf1/n$d;->d:Lf1/f0;

    instance-of v4, v3, Lf1/e0;

    if-eqz v4, :cond_3b

    check-cast v3, Lf1/e0;

    iget-object v3, v3, Lf1/e0;->a:Landroid/view/WindowId;

    invoke-virtual {v3, p1}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    move v3, v0

    goto :goto_3c

    :cond_3b
    const/4 v3, 0x0

    :goto_3c
    if-eqz v3, :cond_47

    invoke-virtual {v2, v1}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    :cond_47
    add-int/lit8 v1, v1, -0x1

    goto :goto_1d

    :cond_4a
    :goto_4a
    return-void
.end method

.method public getDuration()J
    .registers 3

    iget-wide v0, p0, Lf1/n;->mDuration:J

    return-wide v0
.end method

.method public getEpicenter()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lf1/n;->mEpicenterCallback:Lf1/n$f;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Lf1/n$f;->a()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getEpicenterCallback()Lf1/n$f;
    .registers 2

    iget-object v0, p0, Lf1/n;->mEpicenterCallback:Lf1/n$f;

    return-object v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    iget-object v0, p0, Lf1/n;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public getMatchedTransitionValues(Landroid/view/View;Z)Lf1/t;
    .registers 9

    iget-object v0, p0, Lf1/n;->mParent:Lf1/r;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Lf1/n;->getMatchedTransitionValues(Landroid/view/View;Z)Lf1/t;

    move-result-object p1

    return-object p1

    :cond_9
    if-eqz p2, :cond_e

    iget-object v0, p0, Lf1/n;->mStartValuesList:Ljava/util/ArrayList;

    goto :goto_10

    :cond_e
    iget-object v0, p0, Lf1/n;->mEndValuesList:Ljava/util/ArrayList;

    :goto_10
    const/4 v1, 0x0

    if-nez v0, :cond_14

    return-object v1

    :cond_14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_1a
    if-ge v4, v2, :cond_2e

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf1/t;

    if-nez v5, :cond_25

    return-object v1

    :cond_25
    iget-object v5, v5, Lf1/t;->b:Landroid/view/View;

    if-ne v5, p1, :cond_2b

    move v3, v4

    goto :goto_2e

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_2e
    :goto_2e
    if-ltz v3, :cond_3e

    if-eqz p2, :cond_35

    iget-object p1, p0, Lf1/n;->mEndValuesList:Ljava/util/ArrayList;

    goto :goto_37

    :cond_35
    iget-object p1, p0, Lf1/n;->mStartValuesList:Ljava/util/ArrayList;

    :goto_37
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lf1/t;

    :cond_3e
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lf1/n;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPathMotion()Lf1/j;
    .registers 2

    iget-object v0, p0, Lf1/n;->mPathMotion:Lf1/j;

    return-object v0
.end method

.method public getPropagation()Lf1/q;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartDelay()J
    .registers 3

    iget-wide v0, p0, Lf1/n;->mStartDelay:J

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

    iget-object v0, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lf1/n;->mTargetNames:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lf1/n;->mTargetTypes:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lf1/n;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Lf1/t;
    .registers 4

    iget-object v0, p0, Lf1/n;->mParent:Lf1/r;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Lf1/n;->getTransitionValues(Landroid/view/View;Z)Lf1/t;

    move-result-object p1

    return-object p1

    :cond_9
    if-eqz p2, :cond_e

    iget-object p2, p0, Lf1/n;->mStartValues:Lf1/u;

    goto :goto_10

    :cond_e
    iget-object p2, p0, Lf1/n;->mEndValues:Lf1/u;

    :goto_10
    iget-object p2, p2, Lf1/u;->a:Landroidx/collection/a;

    invoke-virtual {p2, p1}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf1/t;

    return-object p1
.end method

.method public isTransitionRequired(Lf1/t;Lf1/t;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_38

    if-eqz p2, :cond_38

    invoke-virtual {p0}, Lf1/n;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    array-length v2, v1

    move v3, v0

    :goto_d
    if-ge v3, v2, :cond_38

    aget-object v4, v1, v3

    invoke-static {p1, p2, v4}, Lf1/n;->isValueChanged(Lf1/t;Lf1/t;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_37

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1b
    iget-object v1, p1, Lf1/t;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, p2, v2}, Lf1/n;->isValueChanged(Lf1/t;Lf1/t;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    :goto_37
    const/4 v0, 0x1

    :cond_38
    return v0
.end method

.method public isValidTarget(Landroid/view/View;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lf1/n;->mTargetIdExcludes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lf1/n;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1f

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lf1/n;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_3c

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_28
    if-ge v3, v1, :cond_3c

    iget-object v4, p0, Lf1/n;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    return v2

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_3c
    iget-object v1, p0, Lf1/n;->mTargetNameExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_55

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lm0/g0$i;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lf1/n;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {p1}, Lm0/g0$i;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    return v2

    :cond_55
    iget-object v1, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_7b

    iget-object v1, p0, Lf1/n;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7b

    iget-object v1, p0, Lf1/n;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_70

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7b

    :cond_70
    iget-object v1, p0, Lf1/n;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_7a

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7b

    :cond_7a
    return v3

    :cond_7b
    iget-object v1, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c1

    iget-object v0, p0, Lf1/n;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    goto :goto_c1

    :cond_90
    iget-object v0, p0, Lf1/n;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_a1

    sget-object v1, Lm0/g0;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lm0/g0$i;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    return v3

    :cond_a1
    iget-object v0, p0, Lf1/n;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_c0

    move v0, v2

    :goto_a6
    iget-object v1, p0, Lf1/n;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_c0

    iget-object v1, p0, Lf1/n;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    return v3

    :cond_bd
    add-int/lit8 v0, v0, 0x1

    goto :goto_a6

    :cond_c0
    return v2

    :cond_c1
    :goto_c1
    return v3
.end method

.method public pause(Landroid/view/View;)V
    .registers 6

    iget-boolean p1, p0, Lf1/n;->mEnded:Z

    if-nez p1, :cond_43

    iget-object p1, p0, Lf1/n;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_c
    if-ltz p1, :cond_1c

    iget-object v1, p0, Lf1/n;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->pause()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_c

    :cond_1c
    iget-object p1, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_41

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_41

    iget-object p1, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_33
    if-ge v2, v1, :cond_41

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf1/n$g;

    invoke-interface {v3, p0}, Lf1/n$g;->onTransitionPause(Lf1/n;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_41
    iput-boolean v0, p0, Lf1/n;->mPaused:Z

    :cond_43
    return-void
.end method

.method public playTransition(Landroid/view/ViewGroup;)V
    .registers 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf1/n;->mStartValuesList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf1/n;->mEndValuesList:Ljava/util/ArrayList;

    iget-object v0, p0, Lf1/n;->mStartValues:Lf1/u;

    iget-object v1, p0, Lf1/n;->mEndValues:Lf1/u;

    invoke-direct {p0, v0, v1}, Lf1/n;->matchStartAndEnd(Lf1/u;Lf1/u;)V

    invoke-static {}, Lf1/n;->getRunningAnimators()Landroidx/collection/a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/f;->size()I

    move-result v1

    sget-object v2, Lf1/w;->a:Lf1/b0;

    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_25
    if-ltz v1, :cond_92

    invoke-virtual {v0, v1}, Landroidx/collection/f;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    if-eqz v4, :cond_8f

    invoke-virtual {v0, v4}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf1/n$d;

    if-eqz v5, :cond_8f

    iget-object v6, v5, Lf1/n$d;->a:Landroid/view/View;

    if-eqz v6, :cond_8f

    iget-object v6, v5, Lf1/n$d;->d:Lf1/f0;

    instance-of v7, v6, Lf1/e0;

    const/4 v8, 0x0

    if-eqz v7, :cond_4e

    check-cast v6, Lf1/e0;

    iget-object v6, v6, Lf1/e0;->a:Landroid/view/WindowId;

    invoke-virtual {v6, v2}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    move v6, v3

    goto :goto_4f

    :cond_4e
    move v6, v8

    :goto_4f
    if-eqz v6, :cond_8f

    iget-object v6, v5, Lf1/n$d;->c:Lf1/t;

    iget-object v7, v5, Lf1/n$d;->a:Landroid/view/View;

    invoke-virtual {p0, v7, v3}, Lf1/n;->getTransitionValues(Landroid/view/View;Z)Lf1/t;

    move-result-object v9

    invoke-virtual {p0, v7, v3}, Lf1/n;->getMatchedTransitionValues(Landroid/view/View;Z)Lf1/t;

    move-result-object v10

    if-nez v9, :cond_6c

    if-nez v10, :cond_6c

    iget-object v10, p0, Lf1/n;->mEndValues:Lf1/u;

    iget-object v10, v10, Lf1/u;->a:Landroidx/collection/a;

    invoke-virtual {v10, v7}, Landroidx/collection/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lf1/t;

    :cond_6c
    if-nez v9, :cond_70

    if-eqz v10, :cond_79

    :cond_70
    iget-object v5, v5, Lf1/n$d;->e:Lf1/n;

    invoke-virtual {v5, v6, v10}, Lf1/n;->isTransitionRequired(Lf1/t;Lf1/t;)Z

    move-result v5

    if-eqz v5, :cond_79

    move v8, v3

    :cond_79
    if-eqz v8, :cond_8f

    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_8c

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_88

    goto :goto_8c

    :cond_88
    invoke-virtual {v0, v4}, Landroidx/collection/f;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8f

    :cond_8c
    :goto_8c
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_8f
    :goto_8f
    add-int/lit8 v1, v1, -0x1

    goto :goto_25

    :cond_92
    iget-object v6, p0, Lf1/n;->mStartValues:Lf1/u;

    iget-object v7, p0, Lf1/n;->mEndValues:Lf1/u;

    iget-object v8, p0, Lf1/n;->mStartValuesList:Ljava/util/ArrayList;

    iget-object v9, p0, Lf1/n;->mEndValuesList:Ljava/util/ArrayList;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lf1/n;->createAnimators(Landroid/view/ViewGroup;Lf1/u;Lf1/u;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lf1/n;->runAnimators()V

    return-void
.end method

.method public removeListener(Lf1/n$g;)Lf1/n;
    .registers 3

    iget-object v0, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_13

    const/4 p1, 0x0

    iput-object p1, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    :cond_13
    return-object p0
.end method

.method public removeTarget(I)Lf1/n;
    .registers 3

    if-eqz p1, :cond_b

    iget-object v0, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Lf1/n;
    .registers 3

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

    iget-object v0, p0, Lf1/n;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-object p0
.end method

.method public removeTarget(Ljava/lang/String;)Lf1/n;
    .registers 3

    iget-object v0, p0, Lf1/n;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .registers 6

    iget-boolean p1, p0, Lf1/n;->mPaused:Z

    if-eqz p1, :cond_48

    iget-boolean p1, p0, Lf1/n;->mEnded:Z

    const/4 v0, 0x0

    if-nez p1, :cond_46

    iget-object p1, p0, Lf1/n;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_11
    if-ltz p1, :cond_21

    iget-object v1, p0, Lf1/n;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->resume()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_11

    :cond_21
    iget-object p1, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    if-eqz p1, :cond_46

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_46

    iget-object p1, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_38
    if-ge v2, v1, :cond_46

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf1/n$g;

    invoke-interface {v3, p0}, Lf1/n$g;->onTransitionResume(Lf1/n;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_46
    iput-boolean v0, p0, Lf1/n;->mPaused:Z

    :cond_48
    return-void
.end method

.method public runAnimators()V
    .registers 5

    invoke-virtual {p0}, Lf1/n;->start()V

    invoke-static {}, Lf1/n;->getRunningAnimators()Landroidx/collection/a;

    move-result-object v0

    iget-object v1, p0, Lf1/n;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v0, v2}, Landroidx/collection/f;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p0}, Lf1/n;->start()V

    invoke-direct {p0, v2, v0}, Lf1/n;->runAnimator(Landroid/animation/Animator;Landroidx/collection/a;)V

    goto :goto_d

    :cond_26
    iget-object v0, p0, Lf1/n;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lf1/n;->end()V

    return-void
.end method

.method public setCanRemoveViews(Z)V
    .registers 2

    iput-boolean p1, p0, Lf1/n;->mCanRemoveViews:Z

    return-void
.end method

.method public setDuration(J)Lf1/n;
    .registers 3

    iput-wide p1, p0, Lf1/n;->mDuration:J

    return-object p0
.end method

.method public setEpicenterCallback(Lf1/n$f;)V
    .registers 2

    iput-object p1, p0, Lf1/n;->mEpicenterCallback:Lf1/n$f;

    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Lf1/n;
    .registers 2

    iput-object p1, p0, Lf1/n;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public varargs setMatchOrder([I)V
    .registers 4

    if-eqz p1, :cond_34

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_34

    :cond_6
    const/4 v0, 0x0

    :goto_7
    array-length v1, p1

    if-ge v0, v1, :cond_2b

    aget v1, p1, v0

    invoke-static {v1}, Lf1/n;->isValidMatch(I)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-static {p1, v0}, Lf1/n;->alreadyContains([II)Z

    move-result v1

    if-nez v1, :cond_1b

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "matches contains a duplicate value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "matches contains invalid value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2b
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lf1/n;->mMatchOrder:[I

    goto :goto_38

    :cond_34
    :goto_34
    sget-object p1, Lf1/n;->DEFAULT_MATCH_ORDER:[I

    iput-object p1, p0, Lf1/n;->mMatchOrder:[I

    :goto_38
    return-void
.end method

.method public setPathMotion(Lf1/j;)V
    .registers 2

    if-nez p1, :cond_7

    sget-object p1, Lf1/n;->STRAIGHT_PATH_MOTION:Lf1/j;

    iput-object p1, p0, Lf1/n;->mPathMotion:Lf1/j;

    goto :goto_9

    :cond_7
    iput-object p1, p0, Lf1/n;->mPathMotion:Lf1/j;

    :goto_9
    return-void
.end method

.method public setPropagation(Lf1/q;)V
    .registers 2

    return-void
.end method

.method public setStartDelay(J)Lf1/n;
    .registers 3

    iput-wide p1, p0, Lf1/n;->mStartDelay:J

    return-object p0
.end method

.method public start()V
    .registers 6

    iget v0, p0, Lf1/n;->mNumInstances:I

    if-nez v0, :cond_2c

    iget-object v0, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2a

    iget-object v0, p0, Lf1/n;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_1c
    if-ge v3, v2, :cond_2a

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf1/n$g;

    invoke-interface {v4, p0}, Lf1/n$g;->onTransitionStart(Lf1/n;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_2a
    iput-boolean v1, p0, Lf1/n;->mEnded:Z

    :cond_2c
    iget v0, p0, Lf1/n;->mNumInstances:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf1/n;->mNumInstances:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    invoke-virtual {p0, v0}, Lf1/n;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-wide v0, p0, Lf1/n;->mDuration:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const-string v1, ") "

    if-eqz v0, :cond_44

    const-string v0, "dur("

    invoke-static {p1, v0}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v4, p0, Lf1/n;->mDuration:J

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_44
    iget-wide v4, p0, Lf1/n;->mStartDelay:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_5c

    const-string v0, "dly("

    invoke-static {p1, v0}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v2, p0, Lf1/n;->mStartDelay:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5c
    iget-object v0, p0, Lf1/n;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_72

    const-string v0, "interp("

    invoke-static {p1, v0}, Lf0/e;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lf1/n;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

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

    invoke-static {p1, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ", "

    const/4 v2, 0x0

    if-lez v0, :cond_b6

    move v0, v2

    :goto_94
    iget-object v3, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_b6

    if-lez v0, :cond_a2

    invoke-static {p1, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_a2
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Lf1/n;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_94

    :cond_b6
    iget-object v0, p0, Lf1/n;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e0

    :goto_be
    iget-object v0, p0, Lf1/n;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_e0

    if-lez v2, :cond_cc

    invoke-static {p1, v1}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_cc
    invoke-static {p1}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

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

    invoke-static {p1, v0}, La/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_e6
    return-object p1
.end method
