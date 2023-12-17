.class public final Lcom/android/fileexplorer/util/FragmentNavInfo;
.super Ljava/lang/Object;
.source "FragmentManagerHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/android/fileexplorer/util/FragmentNavInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static fragmentNavId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/android/fileexplorer/util/FragmentNavInfo;

    .line 3
    invoke-direct {v0}, Lcom/android/fileexplorer/util/FragmentNavInfo;-><init>()V

    .line 6
    sput-object v0, Lcom/android/fileexplorer/util/FragmentNavInfo;->INSTANCE:Lcom/android/fileexplorer/util/FragmentNavInfo;

    .line 8
    const/4 v0, -0x1

    .line 9
    sput v0, Lcom/android/fileexplorer/util/FragmentNavInfo;->fragmentNavId:I

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFragmentNavId()I
    .registers 2

    .line 1
    sget v0, Lcom/android/fileexplorer/util/FragmentNavInfo;->fragmentNavId:I

    .line 3
    return v0
.end method

.method public final setFragmentNavId(I)V
    .registers 2

    .line 1
    sput p1, Lcom/android/fileexplorer/util/FragmentNavInfo;->fragmentNavId:I

    .line 3
    return-void
.end method
