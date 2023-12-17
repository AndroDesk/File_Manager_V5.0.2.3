.class public Lcn/kuaipan/android/utils/ObtainabelList;
.super Ljava/util/LinkedList;
.source "ObtainabelList.java"

# interfaces
.implements Ls1/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList<",
        "TE;>;",
        "Ls1/f;"
    }
.end annotation


# static fields
.field public static a:Ljava/lang/Object; = null

.field public static b:Lcn/kuaipan/android/utils/ObtainabelList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/kuaipan/android/utils/ObtainabelList<",
            "*>;"
        }
    .end annotation
.end field

.field public static c:I = 0x0

.field private static final serialVersionUID:J = 0x59f8f30bbe1eddd3L


# instance fields
.field private next:Lcn/kuaipan/android/utils/ObtainabelList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/kuaipan/android/utils/ObtainabelList<",
            "*>;"
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
    sput-object v0, Lcn/kuaipan/android/utils/ObtainabelList;->a:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    return-void
.end method

.method public static obtain()Lcn/kuaipan/android/utils/ObtainabelList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcn/kuaipan/android/utils/ObtainabelList<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/kuaipan/android/utils/ObtainabelList;->a:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Lcn/kuaipan/android/utils/ObtainabelList;->b:Lcn/kuaipan/android/utils/ObtainabelList;

    .line 6
    if-eqz v1, :cond_19

    .line 8
    iget-object v2, v1, Lcn/kuaipan/android/utils/ObtainabelList;->next:Lcn/kuaipan/android/utils/ObtainabelList;

    .line 10
    sput-object v2, Lcn/kuaipan/android/utils/ObtainabelList;->b:Lcn/kuaipan/android/utils/ObtainabelList;

    .line 12
    const/4 v2, 0x0

    .line 13
    iput-object v2, v1, Lcn/kuaipan/android/utils/ObtainabelList;->next:Lcn/kuaipan/android/utils/ObtainabelList;

    .line 15
    sget v2, Lcn/kuaipan/android/utils/ObtainabelList;->c:I

    .line 17
    add-int/lit8 v2, v2, -0x1

    .line 19
    sput v2, Lcn/kuaipan/android/utils/ObtainabelList;->c:I

    .line 21
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

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
    new-instance v0, Lcn/kuaipan/android/utils/ObtainabelList;

    .line 29
    invoke-direct {v0}, Lcn/kuaipan/android/utils/ObtainabelList;-><init>()V

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
    sget-object v0, Lcn/kuaipan/android/utils/ObtainabelList;->a:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget v1, Lcn/kuaipan/android/utils/ObtainabelList;->c:I

    .line 6
    const/16 v2, 0x50

    .line 8
    if-ge v1, v2, :cond_13

    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 12
    sput v1, Lcn/kuaipan/android/utils/ObtainabelList;->c:I

    .line 14
    sget-object v1, Lcn/kuaipan/android/utils/ObtainabelList;->b:Lcn/kuaipan/android/utils/ObtainabelList;

    .line 16
    iput-object v1, p0, Lcn/kuaipan/android/utils/ObtainabelList;->next:Lcn/kuaipan/android/utils/ObtainabelList;

    .line 18
    sput-object p0, Lcn/kuaipan/android/utils/ObtainabelList;->b:Lcn/kuaipan/android/utils/ObtainabelList;

    .line 20
    :cond_13
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v1

    .line 24
    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_2b

    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 34
    instance-of v3, v2, Ls1/f;

    .line 36
    if-eqz v3, :cond_17

    .line 38
    check-cast v2, Ls1/f;

    .line 40
    invoke-interface {v2}, Ls1/f;->recycle()V

    .line 43
    goto :goto_17

    .line 44
    :cond_2b
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->clear()V

    .line 47
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :catchall_30
    move-exception v1

    .line 50
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    .line 51
    throw v1
.end method
