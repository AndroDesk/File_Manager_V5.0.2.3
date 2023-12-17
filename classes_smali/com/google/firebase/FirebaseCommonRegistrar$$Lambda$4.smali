.class final synthetic Lcom/google/firebase/FirebaseCommonRegistrar$$Lambda$4;
.super Ljava/lang/Object;
.source "FirebaseCommonRegistrar.java"

# interfaces
.implements Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;


# static fields
.field private static final instance:Lcom/google/firebase/FirebaseCommonRegistrar$$Lambda$4;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/FirebaseCommonRegistrar$$Lambda$4;

    invoke-direct {v0}, Lcom/google/firebase/FirebaseCommonRegistrar$$Lambda$4;-><init>()V

    sput-object v0, Lcom/google/firebase/FirebaseCommonRegistrar$$Lambda$4;->instance:Lcom/google/firebase/FirebaseCommonRegistrar$$Lambda$4;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/google/firebase/platforminfo/LibraryVersionComponent$VersionExtractor;
    .registers 1

    sget-object v0, Lcom/google/firebase/FirebaseCommonRegistrar$$Lambda$4;->instance:Lcom/google/firebase/FirebaseCommonRegistrar$$Lambda$4;

    return-object v0
.end method


# virtual methods
.method public extract(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/google/firebase/FirebaseCommonRegistrar;->lambda$getComponents$1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
