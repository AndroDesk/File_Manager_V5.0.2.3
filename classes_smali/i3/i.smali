.class public final Li3/i;
.super Ljava/lang/Object;
.source "Reflection.java"


# static fields
.field public static final a:Li3/j;

.field public static final b:[Lm3/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li3/j;
    :try_end_d
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_d} :catch_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_d} :catch_e
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_d} :catch_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_d} :catch_e

    move-object v0, v1

    :catch_e
    if-eqz v0, :cond_11

    goto :goto_16

    :cond_11
    new-instance v0, Li3/j;

    invoke-direct {v0}, Li3/j;-><init>()V

    :goto_16
    sput-object v0, Li3/i;->a:Li3/j;

    const/4 v0, 0x0

    new-array v0, v0, [Lm3/c;

    sput-object v0, Li3/i;->b:[Lm3/c;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Li3/c;
    .registers 2

    sget-object v0, Li3/i;->a:Li3/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Li3/c;

    invoke-direct {v0, p0}, Li3/c;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
