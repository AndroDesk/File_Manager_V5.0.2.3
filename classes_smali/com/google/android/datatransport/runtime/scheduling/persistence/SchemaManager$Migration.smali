.class public interface abstract Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager$Migration;
.super Ljava/lang/Object;
.source "SchemaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Migration"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract upgrade(Landroid/database/sqlite/SQLiteDatabase;)V
.end method
