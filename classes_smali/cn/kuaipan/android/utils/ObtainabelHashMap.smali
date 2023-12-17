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

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/kuaipan/android/utils/ObtainabelHashMap;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

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

    sget-object v0, Lcn/kuaipan/android/utils/ObtainabelHashMap;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcn/kuaipan/android/utils/ObtainabelHashMap;->b:Lcn/kuaipan/android/utils/ObtainabelHashMap;

    if-eqz v1, :cond_19

    iget-object v2, v1, Lcn/kuaipan/android/utils/ObtainabelHashMap;->next:Lcn/kuaipan/android/utils/ObtainabelHashMap;

    sput-object v2, Lcn/kuaipan/android/utils/ObtainabelHashMap;->b:Lcn/kuaipan/android/utils/ObtainabelHashMap;

    const/4 v2, 0x0

    iput-object v2, v1, Lcn/kuaipan/android/utils/ObtainabelHashMap;->next:Lcn/kuaipan/android/utils/ObtainabelHashMap;

    sget v2, Lcn/kuaipan/android/utils/ObtainabelHashMap;->c:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcn/kuaipan/android/utils/ObtainabelHashMap;->c:I

    invoke-virtual {v1}, Ljava/util/AbstractMap;->clear()V

    monitor-exit v0

    return-object v1

    :cond_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_20

    new-instance v0, Lcn/kuaipan/android/utils/ObtainabelHashMap;

    invoke-direct {v0}, Lcn/kuaipan/android/utils/ObtainabelHashMap;-><init>()V

    return-object v0

    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method


# virtual methods
.method public recycle()V
    .registers 5

    sget-object v0, Lcn/kuaipan/android/utils/ObtainabelHashMap;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget v1, Lcn/kuaipan/android/utils/ObtainabelHashMap;->c:I

    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_13

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcn/kuaipan/android/utils/ObtainabelHashMap;->c:I

    sget-object v1, Lcn/kuaipan/android/utils/ObtainabelHashMap;->b:Lcn/kuaipan/android/utils/ObtainabelHashMap;

    iput-object v1, p0, Lcn/kuaipan/android/utils/ObtainabelHashMap;->next:Lcn/kuaipan/android/utils/ObtainabelHashMap;

    sput-object p0, Lcn/kuaipan/android/utils/ObtainabelHashMap;->b:Lcn/kuaipan/android/utils/ObtainabelHashMap;

    :cond_13
    invoke-virtual {p0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ls1/f;

    if-eqz v3, :cond_1b

    check-cast v2, Ls1/f;

    invoke-interface {v2}, Ls1/f;->recycle()V

    goto :goto_1b

    :cond_2f
    invoke-virtual {p0}, Ljava/util/AbstractMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_34
    move-exception v1

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v1
.end method
