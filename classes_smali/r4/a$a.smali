.class public final Lr4/a$a;
.super Ljava/lang/Object;
.source "ApkLibraryInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/zip/ZipFile;

.field public b:Ljava/util/zip/ZipEntry;


# direct methods
.method public constructor <init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lr4/a$a;->a:Ljava/util/zip/ZipFile;

    .line 6
    iput-object p2, p0, Lr4/a$a;->b:Ljava/util/zip/ZipEntry;

    .line 8
    return-void
.end method
