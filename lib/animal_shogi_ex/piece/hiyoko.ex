defmodule AnimalShogiEx.Piece.Hiyoko do
  alias AnimalShogiEx.Piece
  alias AnimalShogiEx.Move
  alias Move.Direction.UP

  @moveable_directions [UP]

  @behaviour Move
  @behaviour Piece

  @impl Move
  @spec moveable?(Piece.direction()) :: boolean
  def moveable?(direction) when direction in @moveable_directions, do: true
  def moveable?(_), do: false

  @impl Piece
  @spec moveable_directions :: [Move.direction()]
  def moveable_directions, do: @moveable_directions

  @impl Piece
  def sigil, do: "h"

  @impl Piece
  def emoji, do: "🐤"
end
