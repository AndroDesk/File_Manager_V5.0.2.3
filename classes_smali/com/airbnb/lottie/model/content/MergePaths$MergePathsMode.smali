.class public final enum Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
.super Ljava/lang/Enum;
.source "MergePaths.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/MergePaths;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MergePathsMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum ADD:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum EXCLUDE_INTERSECTIONS:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum INTERSECT:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum MERGE:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum SUBTRACT:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    .line 1
    new-instance v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 3
    const-string v1, "MERGE"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->MERGE:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 11
    new-instance v1, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 13
    const-string v3, "ADD"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->ADD:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 21
    new-instance v3, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 23
    const-string v5, "SUBTRACT"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->SUBTRACT:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 31
    new-instance v5, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 33
    const-string v7, "INTERSECT"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->INTERSECT:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 41
    new-instance v7, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 43
    const-string v9, "EXCLUDE_INTERSECTIONS"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->EXCLUDE_INTERSECTIONS:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 51
    const/4 v9, 0x5

    .line 52
    new-array v9, v9, [Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 54
    aput-object v0, v9, v2

    .line 56
    aput-object v1, v9, v4

    .line 58
    aput-object v3, v9, v6

    .line 60
    aput-object v5, v9, v8

    .line 62
    aput-object v7, v9, v10

    .line 64
    sput-object v9, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->$VALUES:[Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 66
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static forId(I)Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
    .registers 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1e

    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_1b

    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_18

    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p0, v0, :cond_15

    .line 13
    const/4 v0, 0x5

    .line 14
    if-eq p0, v0, :cond_12

    .line 16
    sget-object p0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->MERGE:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 18
    return-object p0

    .line 19
    :cond_12
    sget-object p0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->EXCLUDE_INTERSECTIONS:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 21
    return-object p0

    .line 22
    :cond_15
    sget-object p0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->INTERSECT:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 24
    return-object p0

    .line 25
    :cond_18
    sget-object p0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->SUBTRACT:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 27
    return-object p0

    .line 28
    :cond_1b
    sget-object p0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->ADD:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 30
    return-object p0

    .line 31
    :cond_1e
    sget-object p0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->MERGE:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 33
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
    .registers 2

    .line 1
    const-class v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
    .registers 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->$VALUES:[Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 3
    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 9
    return-object v0
.end method
