.class public final synthetic Lmiuix/appcompat/app/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/appcompat/app/AlertDialog;I)V
    .registers 3

    iput p2, p0, Lmiuix/appcompat/app/e;->a:I

    iput-object p1, p0, Lmiuix/appcompat/app/e;->b:Lmiuix/appcompat/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    iget v0, p0, Lmiuix/appcompat/app/e;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lmiuix/appcompat/app/e;->b:Lmiuix/appcompat/app/AlertDialog;

    check-cast v0, Lmiuix/appcompat/app/DatePickerDialog;

    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/DatePickerDialog;->d(Lmiuix/appcompat/app/DatePickerDialog;Landroid/widget/CompoundButton;Z)V

    return-void

    :goto_e
    iget-object v0, p0, Lmiuix/appcompat/app/e;->b:Lmiuix/appcompat/app/AlertDialog;

    check-cast v0, Lmiuix/appcompat/app/DateTimePickerDialog;

    invoke-static {v0, p1, p2}, Lmiuix/appcompat/app/DateTimePickerDialog;->d(Lmiuix/appcompat/app/DateTimePickerDialog;Landroid/widget/CompoundButton;Z)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
