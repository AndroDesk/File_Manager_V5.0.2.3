.class public final Ld3/b;
.super Ljava/lang/Object;
.source "PlatformImplementations.kt"


# static fields
.field public static final a:Ld3/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    const-string v0, ", base type classloader: "

    const-string v1, "Instance class was loaded from a different classloader: "

    const-class v2, Ld3/a;

    const-string v3, "forName(\"kotlin.internal…entations\").newInstance()"

    :try_start_8
    const-class v4, Lf3/a;

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_11} :catch_44

    :try_start_11
    check-cast v4, Ld3/a;
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_11 .. :try_end_13} :catch_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_13} :catch_44

    goto/16 :goto_103

    :catch_15
    move-exception v5

    :try_start_16
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v4, v6}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_43

    new-instance v7, Ljava/lang/ClassNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4, v5}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_43
    throw v5
    :try_end_44
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_44} :catch_44

    :catch_44
    :try_start_44
    const-string v4, "kotlin.internal.JRE8PlatformImplementations"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/ClassNotFoundException; {:try_start_44 .. :try_end_51} :catch_84

    :try_start_51
    check-cast v4, Ld3/a;
    :try_end_53
    .catch Ljava/lang/ClassCastException; {:try_start_51 .. :try_end_53} :catch_55
    .catch Ljava/lang/ClassNotFoundException; {:try_start_51 .. :try_end_53} :catch_84

    goto/16 :goto_103

    :catch_55
    move-exception v5

    :try_start_56
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v4, v6}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_83

    new-instance v7, Ljava/lang/ClassNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4, v5}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_83
    throw v5
    :try_end_84
    .catch Ljava/lang/ClassNotFoundException; {:try_start_56 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    const-class v4, Le3/a;

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_84 .. :try_end_8d} :catch_bf

    :try_start_8d
    check-cast v4, Ld3/a;
    :try_end_8f
    .catch Ljava/lang/ClassCastException; {:try_start_8d .. :try_end_8f} :catch_90
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8d .. :try_end_8f} :catch_bf

    goto :goto_103

    :catch_90
    move-exception v5

    :try_start_91
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v4, v6}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_be

    new-instance v7, Ljava/lang/ClassNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4, v5}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    :cond_be
    throw v5
    :try_end_bf
    .catch Ljava/lang/ClassNotFoundException; {:try_start_91 .. :try_end_bf} :catch_bf

    :catch_bf
    :try_start_bf
    const-string v4, "kotlin.internal.JRE7PlatformImplementations"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Li3/g;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_cc
    .catch Ljava/lang/ClassNotFoundException; {:try_start_bf .. :try_end_cc} :catch_fe

    :try_start_cc
    check-cast v4, Ld3/a;
    :try_end_ce
    .catch Ljava/lang/ClassCastException; {:try_start_cc .. :try_end_ce} :catch_cf
    .catch Ljava/lang/ClassNotFoundException; {:try_start_cc .. :try_end_ce} :catch_fe

    goto :goto_103

    :catch_cf
    move-exception v3

    :try_start_d0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v4, v2}, Li3/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_fd

    new-instance v5, Ljava/lang/ClassNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v3}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_fd
    throw v3
    :try_end_fe
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d0 .. :try_end_fe} :catch_fe

    :catch_fe
    new-instance v4, Ld3/a;

    invoke-direct {v4}, Ld3/a;-><init>()V

    :goto_103
    sput-object v4, Ld3/b;->a:Ld3/a;

    return-void
.end method
