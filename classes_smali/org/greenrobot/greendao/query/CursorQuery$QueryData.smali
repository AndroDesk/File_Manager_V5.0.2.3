.class final Lorg/greenrobot/greendao/query/CursorQuery$QueryData;
.super Lorg/greenrobot/greendao/query/AbstractQueryData;
.source "CursorQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/greendao/query/CursorQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueryData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/greenrobot/greendao/query/AbstractQueryData<",
        "TT2;",
        "Lorg/greenrobot/greendao/query/CursorQuery<",
        "TT2;>;>;"
    }
.end annotation


# instance fields
.field private final limitPosition:I

.field private final offsetPosition:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lorg/greenrobot/greendao/query/AbstractQueryData;-><init>(Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    iput p4, p0, Lorg/greenrobot/greendao/query/CursorQuery$QueryData;->limitPosition:I

    iput p5, p0, Lorg/greenrobot/greendao/query/CursorQuery$QueryData;->offsetPosition:I

    return-void
.end method


# virtual methods
.method public bridge synthetic createQuery()Lorg/greenrobot/greendao/query/AbstractQuery;
    .registers 2

    invoke-virtual {p0}, Lorg/greenrobot/greendao/query/CursorQuery$QueryData;->createQuery()Lorg/greenrobot/greendao/query/CursorQuery;

    move-result-object v0

    return-object v0
.end method

.method public createQuery()Lorg/greenrobot/greendao/query/CursorQuery;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/query/CursorQuery<",
            "TT2;>;"
        }
    .end annotation

    new-instance v8, Lorg/greenrobot/greendao/query/CursorQuery;

    iget-object v2, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->dao:Lorg/greenrobot/greendao/AbstractDao;

    iget-object v3, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->sql:Ljava/lang/String;

    iget-object v0, p0, Lorg/greenrobot/greendao/query/AbstractQueryData;->initialValues:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Ljava/lang/String;

    iget v5, p0, Lorg/greenrobot/greendao/query/CursorQuery$QueryData;->limitPosition:I

    iget v6, p0, Lorg/greenrobot/greendao/query/CursorQuery$QueryData;->offsetPosition:I

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/greenrobot/greendao/query/CursorQuery;-><init>(Lorg/greenrobot/greendao/query/CursorQuery$QueryData;Lorg/greenrobot/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;IILorg/greenrobot/greendao/query/CursorQuery$1;)V

    return-object v8
.end method
