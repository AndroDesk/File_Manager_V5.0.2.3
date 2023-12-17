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

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Locale;

    invoke-static {v0}, Li0/f$b;->a([Ljava/util/Locale;)Landroid/os/LocaleList;

    move-result-object v0

    new-instance v1, Li0/f;

    new-instance v2, Li0/h;

    invoke-direct {v2, v0}, Li0/h;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Li0/f;-><init>(Li0/h;)V

    sput-object v1, Li0/f;->b:Li0/f;

    return-void
.end method

.method public constructor <init>(Li0/h;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li0/f;->a:Li0/g;

    return-void
.end method

.method public static a(Ljava/lang/String;)Li0/f;
    .registers 5

    if-eqz p0, :cond_30

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_30

    :cond_9
    const/4 v0, -0x1

    const-string v1, ","

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    new-array v1, v0, [Ljava/util/Locale;

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_21

    aget-object v3, p0, v2

    invoke-static {v3}, Li0/f$a;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_21
    invoke-static {v1}, Li0/f$b;->a([Ljava/util/Locale;)Landroid/os/LocaleList;

    move-result-object p0

    new-instance v0, Li0/f;

    new-instance v1, Li0/h;

    invoke-direct {v1, p0}, Li0/h;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Li0/f;-><init>(Li0/h;)V

    return-object v0

    :cond_30
    :goto_30
    sget-object p0, Li0/f;->b:Li0/f;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Li0/f;

    if-eqz v0, :cond_12

    iget-object v0, p0, Li0/f;->a:Li0/g;

    check-cast p1, Li0/f;

    iget-object p1, p1, Li0/f;->a:Li0/g;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Li0/f;->a:Li0/g;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Li0/f;->a:Li0/g;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
