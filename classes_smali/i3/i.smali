.class public final Li3/i;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field public static final a:Li3/j;

.field public static final b:[Lm3/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Li3/j;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_d} :catch_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_d} :catch_e
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_d} :catch_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_d} :catch_e

    .line 14
    move-object v0, v1

    .line 15
    :catch_e
    if-eqz v0, :cond_11

    .line 17
    goto :goto_16

    .line 18
    :cond_11
    new-instance v0, Li3/j;

    .line 20
    invoke-direct {v0}, Li3/j;-><init>()V

    .line 23
    :goto_16
    sput-object v0, Li3/i;->a:Li3/j;

    .line 25
    const/4 v0, 0x0

    .line 26
    new-array v0, v0, [Lm3/c;

    .line 28
    sput-object v0, Li3/i;->b:[Lm3/c;

    .line 30
    return-void
.end method

.method public static a(Ljava/lang/Class;)Li3/c;
    .registers 2

    .line 1
    sget-object v0, Li3/i;->a:Li3/j;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Li3/c;

    .line 8
    invoke-direct {v0, p0}, Li3/c;-><init>(Ljava/lang/Class;)V

    .line 11
    return-object v0
.end method
