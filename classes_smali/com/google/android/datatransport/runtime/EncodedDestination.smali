.class public interface abstract Lcom/google/android/datatransport/runtime/EncodedDestination;
.super Ljava/lang/Object;
.source "EncodedDestination.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/Destination;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract getSupportedEncodings()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/datatransport/Encoding;",
            ">;"
        }
    .end annotation
.end method
