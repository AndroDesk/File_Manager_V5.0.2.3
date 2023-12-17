.class public final Li0/f;
.super Ljava/lang/Object;
.source "LocaleListCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li0/f$b;,
        Li0/f$a;
    }
.end annotation


# static fields
.field public static final b:Li0/f;


# instance fields
.field public final a:Li0/g;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/util/Locale;

    .line 4
    invoke-static {v0}, Li0/f$b;->a([Ljava/util/Locale;)Landroid/os/LocaleList;

    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Li0/f;

    .line 10
    new-instance v2, Li0/h;

    .line 12
    invoke-direct {v2, v0}, Li0/h;-><init>(Ljava/lang/Object;)V

    .line 15
    invoke-direct {v1, v2}, Li0/f;-><init>(Li0/h;)V

    .line 18
    sput-object v1, Li0/f;->b:Li0/f;

    .line 20
    return-void
.end method

.method public constructor <init>(Li0/h;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Li0/f;->a:Li0/g;

    .line 6
    return-void
.end method

.method public static a(Ljava/lang/String;)Li0/f;
    .registers 5

    .line 1
    if-eqz p0, :cond_30

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_9

    .line 9
    goto :goto_30

    .line 10
    :cond_9
    const/4 v0, -0x1

    .line 11
    const-string v1, ","

    .line 13
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    array-length v0, p0

    .line 18
    new-array v1, v0, [Ljava/util/Locale;

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_14
    if-ge v2, v0, :cond_21

    .line 23
    aget-object v3, p0, v2

    .line 25
    invoke-static {v3}, Li0/f$a;->a(Ljava/lang/String;)Ljava/util/Locale;

    .line 28
    move-result-object v3

    .line 29
    aput-object v3, v1, v2

    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 33
    goto :goto_14

    .line 34
    :cond_21
    invoke-static {v1}, Li0/f$b;->a([Ljava/util/Locale;)Landroid/os/LocaleList;

    .line 37
    move-result-object p0

    .line 38
    new-instance v0, Li0/f;

    .line 40
    new-instance v1, Li0/h;

    .line 42
    invoke-direct {v1, p0}, Li0/h;-><init>(Ljava/lang/Object;)V

    .line 45
    invoke-direct {v0, v1}, Li0/f;-><init>(Li0/h;)V

    .line 48
    return-object v0

    .line 49
    :cond_30
    :goto_30
    sget-object p0, Li0/f;->b:Li0/f;

    .line 51
    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    instance-of v0, p1, Li0/f;

    .line 3
    if-eqz v0, :cond_12

    .line 5
    iget-object v0, p0, Li0/f;->a:Li0/g;

    .line 7
    check-cast p1, Li0/f;

    .line 9
    iget-object p1, p1, Li0/f;->a:Li0/g;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_12

    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_13

    .line 19
    :cond_12
    const/4 p1, 0x0

    .line 20
    :goto_13
    return p1
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Li0/f;->a:Li0/g;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Li0/f;->a:Li0/g;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
