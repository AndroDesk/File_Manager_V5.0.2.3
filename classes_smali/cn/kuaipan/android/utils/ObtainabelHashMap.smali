.class public Lcn/kuaipan/android/utils/ObtainabelHashMap;
.super Ljava/util/HashMap;
.source "ObtainabelHashMap.java"

# interfaces
.implements Ls1/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap<",
        "TK;TV;>;",
        "Ls1/f;"
    }
.end annotation


# static fields
.field public static a:Ljava/lang/Object; = null

.field public static b:Lcn/kuaipan/android/utils/ObtainabelHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/kuaipan/android/utils/ObtainabelHashMap<",
            "**>;"
        }
    .end annotation
.end field

.field public static c:I = 0x0

.field private static final serialVersionUID:J = 0x482e972b8c109b80L


# instance fields
.field private next:Lcn/kuaipan/android/utils/ObtainabelHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/kuaipan/android/utils/ObtainabelHashMap<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcn/kuaipan/android/utils/ObtainabelHashMap;->a:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 4
    return-void
.end method

.method public static obtain()Lcn/kuaipan/android/utils/ObtainabelHashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcn/kuaipan/android/utils/ObtainabelHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/kuaipan/android/utils/ObtainabelHashMap;->a:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcn/kuaipan/android/utils/ObtainabelHashMap;->b:Lcn/kuaipan/android/utils/ObtainabelHashMap;

    .line 6
    if-eqz v1, :cond_19

    .line 8
    iget-object v2, v1, Lcn/kuaipan/android/utils/ObtainabelHashMap;->next:Lcn/kuaipan/android/utils/ObtainabelHashMap;

    .line 10
    sput-object v2, Lcn/kuaipan/android/utils/ObtainabelHashMap;->b:Lcn/kuaipan/android/utils/ObtainabelHashMap;

    .line 12
    const/4 v2, 0x0

    .line 13
    iput-object v2, v1, Lcn/kuaipan/android/utils/ObtainabelHashMap;->next:Lcn/kuaipan/android/utils/ObtainabelHashMap;

    .line 15
    sget v2, Lcn/kuaipan/android/utils/ObtainabelHashMap;->c:I

    .line 17
    add-int/lit8 v2, v2, -0x1

    .line 19
    sput v2, Lcn/kuaipan/android/utils/ObtainabelHashMap;->c:I

    .line 21
    invoke-virtual {v1}, Ljava/util/AbstractMap;->clear()V

    .line 24
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_20

    .line 27
    new-instance v0, Lcn/kuaipan/android/utils/ObtainabelHashMap;

    .line 29
    invoke-direct {v0}, Lcn/kuaipan/android/utils/ObtainabelHashMap;-><init>()V

    .line 32
    return-object v0

    .line 33
    :catchall_20
    move-exception v1

    .line 34
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    .line 35
    throw v1
.end method


# virtual methods
.method public recycle()V
    .registers 5

    .line 1
    sget-object v0, Lcn/kuaipan/android/utils/ObtainabelHashMap;->a:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget v1, Lcn/kuaipan/android/utils/ObtainabelHashMap;->c:I

    .line 6
    const/16 v2, 0x1f4

    .line 8
    if-ge v1, v2, :cond_13

    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 12
    sput v1, Lcn/kuaipan/android/utils/ObtainabelHashMap;->c:I

    .line 14
    sget-object v1, Lcn/kuaipan/android/utils/ObtainabelHashMap;->b:Lcn/kuaipan/android/utils/ObtainabelHashMap;

    .line 16
    iput-object v1, p0, Lcn/kuaipan/android/utils/ObtainabelHashMap;->next:Lcn/kuaipan/android/utils/ObtainabelHashMap;

    .line 18
    sput-object p0, Lcn/kuaipan/android/utils/ObtainabelHashMap;->b:Lcn/kuaipan/android/utils/ObtainabelHashMap;

    .line 20
    :cond_13
    invoke-virtual {p0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v1

    .line 28
    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2f

    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    instance-of v3, v2, Ls1/f;

    .line 40
    if-eqz v3, :cond_1b

    .line 42
    check-cast v2, Ls1/f;

    .line 44
    invoke-interface {v2}, Ls1/f;->recycle()V

    .line 47
    goto :goto_1b

    .line 48
    :cond_2f
    invoke-virtual {p0}, Ljava/util/AbstractMap;->clear()V

    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :catchall_34
    move-exception v1

    .line 54
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    .line 55
    throw v1
.end method
